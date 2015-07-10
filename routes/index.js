
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: '小苹果零食坊-小苹果零食' });
};