
/*
 * GET home page.
 */

exports.index = function(req, res){
  	res.render('index.ejs', { 
  		title: '小苹果零食坊-小苹果零食' ,
  		noticeData:notice(),
  		bztj : bztj()
	});
};

//商城公告
var notice = function(){
	var data = [];
	data.push({
		title:"上线通知",
		content:"小苹果零食坊正式上线",
		url:"www.baidu.com"
	})
	data.push({
		title:"新年快乐",
		content:"值此新春佳节，小苹果恭祝大家新年快乐万事如意。",
		url:"www.baidu.com"
	})
	data.push({
		title:"客户注册",	
		content:"小苹果零食坊，客户上线注册",
		url:"www.baidu.com"
	})
	data.push({
		title:"新年快乐",
		content:"值此新春佳节，小苹果恭祝大家新年快乐万事如意。",
		url:"www.baidu.com"
	})
	data.push({
		title:"客户注册",
		content:"小苹果零食坊，客户上线注册",
		url:"www.baidu.com"
	})
	return data;
}
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