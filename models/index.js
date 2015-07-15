var dbControl = require("./sqlHelp");

var query = function(){}

//获取活动前五条数据
query.prototype.getTop5Activy = function(callback){
	var sql = "select * from notice where flag = 0 LIMIT 5";
	return dbControl.exexSql(sql,callback);
}

module.exports = new query();