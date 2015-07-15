var mysql = require("mysql");
var config = require("./../config.json");
//数据库配置
var options = {
	host:config.host,
	port:config.port,
	database:config.database,
	user:config.user,
	password:config.password
}
var pool = mysql.createPool(options);

var dataControl = function(){}
//执行sql语句
dataControl.prototype.exexSql = function (sql,callback){
	pool.getConnection(function(err,connection){
		if(err){
			callback();
		}
		else{
			connection.query(sql,callback);
		}
	});
}

module.exports =new dataControl();