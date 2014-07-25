var exec = require('cordova/exec');

var iOSParseSessionLogin = function(sessionToken, callback) {
  var iOSParseSessionLoginReturn = function (json) {
    var data = JSON.parse(json);

    if (data.error)
      return callback(err, null);

    return callback(null, data.status);
  }

  exec(iOSParseSessionLoginReturn, iOSParseSessionLoginReturn, 'iOSParseSessionLogin', 'iOSParseSessionLogin', [sessionToken]);
};

module.exports = iOSParseSessionLogin;
