var moment = require('moment-timezone');
const app_debug_mode = true;
const timezone_name = "Asia/Colombo";

module.exports = {

    ImagePath: () => {
        return "http://localhost:3001/img/";
    },

    ThrowHtmlError: (err, res) => {
        console.error(err.stack);
        if (res) {
            res.json({'status': '0', "message": "Server Internal Error" });
        }
    },

    ThrowSocketError: (err, client, eventName ) => {
        console.error(err.stack);
        if (client) {
            client.emit(eventName, { 'status': '0', "message": "Server Internal Error" });
        }
    },

    CheckParameterValid: (res, jsonObj, checkKeys, callback) => {
        var isValid = true;
        var missingParameter = "";

        checkKeys.forEach((key, indexOf) => {
            if (!Object.prototype.hasOwnProperty.call(jsonObj, key)) {
                isValid = false;
                missingParameter += key + " ";
            }
        });

        if (!isValid) {
            if (!app_debug_mode) {
                missingParameter = "";
            }
            res.json({ 'status': '0', "message": "Missing parameter (" + missingParameter + ")" });
        } else {
            return callback();
        }
    },

    CheckParameterValidSocket: (client, eventName, jsonObj, checkKeys, callback) => {
        var isValid = true;
        var missingParameter = "";

        checkKeys.forEach((key, indexOf) => {
            if (!Object.prototype.hasOwnProperty.call(jsonObj, key)) {
                isValid = false;
                missingParameter += key + " ";
            }
        });

        if (!isValid) {
            if (!app_debug_mode) {
                missingParameter = "";
            }
            client.emit(eventName, { 'status': '0', "message": "Missing parameter (" + missingParameter + ")" });
        } else {
            return callback();
        }
    },

    createRequestToken: () => {
        var chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var result = '';
        for (let i = 20; i > 0; i--) {
            result += chars[Math.floor(Math.random() * chars.length)];
        }
        return result;
    },

    Dlog: (log) => {
        if (app_debug_mode) {
            console.log(log);
        }
    },

    serverDateTime:(format) => {
        var jun = moment(new Date());
        jun.tz(timezone_name).format();
        return jun.format(format);
    },

    serverYYYYMMDDHHmmss:()=>{
        return module.exports.serverDateTime('YYYY-MM-DD HH:mm:ss'); // Corrected reference
    },

    createNumber:(length = 4) => {
        var chars = "0123456789"
        var result = '';
        for (let i = length; i > 0; i--) {
            result += chars[Math.floor(Math.random() * chars.length)];
        }
        return result;
    },

    fileNameGenerate: (extension) => {
        var chars = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var result = '';
        for (let i = 10; i > 0; i--) result += chars[Math.floor(Math.random() * chars.length)];
        return module.exports.serverDateTime('YYYYMMDDHHmmssms') + result + '.' + extension; // Corrected reference
    }

};
