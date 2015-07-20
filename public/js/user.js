$(function(){
	bindBlur();
	bindSubmit();
})


//提交验证
// 用户名验证
function userNameCheck(){
	var userName = $("#userName").val();//用户名
	if(userName == ""){
		getError($("#userName")).text('用户名不能为空！').show();
		$("#userName").parent().addClass('on');
		return false;
	}
	else{
		getError($("#userName")).text('').hide();
		$("#userName").parent().removeClass('on');
		return true;
	}
}
//密码验证
function pswCheck(){
	var psw = $("#psw").val();//密码
	var error = getError($("#psw"));
	if(psw == ""){
		error.text("密码不能为空！");
		$("#psw").parent().addClass('on');
		return false;
	}
	else if(psw.length<6 || psw.length > 12){
		error.text("密码长度在6~12位之间！").show();
		$("#psw").parent().addClass('on');
		return false;
	}
	else{
		error.text("").hide();
		$("#psw").parent().removeClass('on');
		return true;
	}
}

//验证密码确认
function confirmPswCheck(){
	var error = getError($("#confirmPsw"));
	var confirmPsw = $("#confirmPsw").val();
	var psw = $("#psw").val();
	if(psw != confirmPsw){
		error.text("两次输入的密码不一样").show();
		$("#confirmPsw").parent().addClass('on');
		return false;
	}
	else {
		error.text("").hide();
		$("#confirmPsw").parent().removeClass('on');
		return true;
	}
}

//邮箱验证
function emailCheck(){
	var email = $("#email").val();
	var error = getError($("#email"));
 	var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(email == ""){
		error.text("电子邮箱不能为空!").show();
		$("#email").parent().addClass('on');
		return false;
	}
	else if(!filter.test(email)){
		error.text("电子邮箱格式不正确!").show();
		$("#email").parent().addClass('on');
		return false;
	}
	else{
		error.text("").hide();
		$("#email").parent().removeClass('on');
		return true;
	}
}
//获取用户错误dom
function getError(that){
	return $(that).parent().siblings('.error');
}

//绑定blur事件
function bindBlur(){
	$("#userName").blur(function(event){
		userNameCheck(this);
	})
	$("#psw").blur(function(event){
		pswCheck(this);
	})
	$("#confirmPsw").blur(function(event){
		confirmPswCheck(this);
	})
	$("#email").blur(function(event){
		emailCheck(this);
	})

}

//bind submit
function bindSubmit(){
	$("#reg_submit").click(function(){
		var checkrResult = userNameCheck() && pswCheck() && emailCheck() ;
		if(!checkrResult){
			return false;
		}
	})
}