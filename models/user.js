var sqlHelp = require("sqlHelp.js");

var user = function(){};

user.prototype.addRegister = function(reqParams){
	var cardID = getNewID();
	var userName = reqParams.userName;
	var password = reqParams.password;
	var email = reqParams.email;
	var sql = 'insert into vip(cardID,regTime,userName,password,email) values("0001",now(),0,"admin","xuyanglifan","897103652@qq.com")';

}