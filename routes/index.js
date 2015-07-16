
/*
 * GET home page.
 */
var data = require("./../models/index.js")
exports.index = function(req, res){
	//商城公告
	var getNotice = function(){
		//获取前五条
		data.getTop5Activy(dataBack);
	}();
	function dataBack(err,rows){
		if(err){

		}
		else{		
			console.log(rows);
			res.render('index.ejs', { 
		  		title: '小苹果零食坊-小苹果零食' ,
		  		noticeData:rows,
		  		bztj : bztj()
			});
		}
	}
  	
};


//本周特价
var bztj = function(){
	var data = [];
	data.push({
		title:"板栗特价",
		content:"板栗原价¥15,现特价¥8",
		url:"www.baidu.com"
	})
	data.push({
		title:"荔枝特价",
		content:"板栗原价¥15,现特价¥8",
		url:"www.baidu.com"
	})
	data.push({
		title:"板栗特价",
		content:"板栗原价¥15,现特价¥8",
		url:"www.baidu.com"
	})
	data.push({
		title:"板栗特价",
		content:"板栗原价¥15,现特价¥8",
		url:"www.baidu.com"
	})
	data.push({
		title:"板栗特价",
		content:"板栗原价¥15,现特价¥8",
		url:"www.baidu.com"
	})
	return data;
}