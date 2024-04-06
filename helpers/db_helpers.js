var mysql = require('mysql')
var config = require('config')
var dbConfig = config.get('dbConfig')
var db = mysql.createConnection(dbConfig);
var helper = require('./helpers')

if(config.has('optionalFeature.detail')) {
    var detail = config.get('optionalFeature.detail');
    helper.Dlog('config: ' + detail);
}

reconnect(db, () => {});

function reconnect(connection, callback) {
    helper.Dlog("(" + helper.serverYYYYMMDDHHmmss() + ")" )

    connection = mysql.createConnection(dbConfig);
    connection.connect((err) => {
        if(err) {
            helper.ThrowHtmlError(err);

            setTimeout(() => {
                helper.Dlog('DB ReConnecting Error (' + helper.serverYYYYMMDDHHmmss() + ') ' );

                reconnect(connection, callback);
            }, 5 * 1000);
        }else{
            helper.Dlog('successfully connect with database');
            db = connection;
            return callback();
        }
    } )


}

module.exports = {
    query: (sqlQuery, args, callback) => {

        if(db.state === 'authenticated' || db.state === "connected") {
            db.query(sqlQuery, args, (error, result) => {
                return callback(error, result);
            })
        }else if ( db.state === "protocol_error" ) {
            reconnect(db, () => {
                db.query(sqlQuery, args, (error, result) => {
                    return callback(error, result);
                })
            })
        }else{
            reconnect(db, ()=>{
                db.query(sqlQuery, args, (error, result ) => {
                    return callback(error, result);
                } )
            })
        }

    }
}

process.on('uncaughtException', (err) => {
    helper.Dlog('App is Crash DB helper (' + helper.serverYYYYMMDDHHmmss() + ')');
    helper.Dlog(err.code);

})
