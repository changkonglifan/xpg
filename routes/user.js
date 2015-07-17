
/*
 * GET users listing.
 */

exports.list = function(req, res){
  res.send("respond with a resource");
};

//注册
exports.register = function(req,res){
	res.render('register/register.ejs',{
		title:"注册"
	});
}