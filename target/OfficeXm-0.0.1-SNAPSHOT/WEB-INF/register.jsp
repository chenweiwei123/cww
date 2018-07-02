<%--
  Created by IntelliJ IDEA.
  User: chenwei
  Date: 18-5-10
  Time: 上午11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./taglib.jsp" %>
<html>
<head>
    <title>欢迎使用注册界面</title>
    <script type="text/javascript">
         function check(form) {
          if(form.name.value=='') {
                alert("请输入用户姓名!");
                form.userId.focus();
                return false;
           }
       if(form.password.value==''){
                alert("请输入登录密码!");
                form.password.focus();
                return false;
         }
         return true;
         }
</script>
</head>
<body>
<form action="${cww}/worker/registers" method="post" enctype="multipart/form-data">
    <table align="center" valign="center" hight="35px">
        <tr>
            <td>
				<div class="input-group">
					<span class="input-group-addon" id="basic-addon1">名称 &nbsp;&nbsp;&nbsp;</span> 
					<input id="name" name="name" type="text" class="form-control" placeholder="Username"
						aria-describedby="basic-addon1">
				</div>
            </td>
        </tr>
        <tr>
            <td>
            <div class="input-group">
					<span class="input-group-addon" id="basic-addon1">手机号</span> 
					<input id="phone" name="phone" type="number"  class="form-control" placeholder="手机号"
						aria-describedby="basic-addon1">
				</div>
             </td>
        </tr>
        <tr>
            <td >
            <div class="input-group">
					<span class="input-group-addon" id="basic-addon1">密码&nbsp;&nbsp;&nbsp;&nbsp;</span> 
					<input  type="password" class="form-control" placeholder="密码"
						aria-describedby="basic-addon1" name="password" id="password" >
				</div>
            </td>
        </tr>
         <tr>
            <td>
            <div class="input-group">
					<span class="input-group-addon" id="basic-addon1">性别</span> 
					<input id="phone" name="phone" type="radio" class="form-control"
						aria-describedby="basic-addon1" value="1" checked="checked">男
					<input id="phone" name="phone" type="radio" class="form-control" 
						aria-describedby="basic-addon1" value="0">女
				</div>
             </td>
        </tr>
           <tr>
            <td >
            <div >
					<input  type="file" class="form-control"
						aria-describedby="basic-addon1" name="file" id="file" multiple="multiple">上传头像
				</div>
            </td>
        </tr>
         <tr>
            <td>
            <div class="btn-group" role="group" aria-label="...">
            <button type="submit" class="btn btn-default" onclick="check(this.form);" value="注册">注册</button>
            <button type="reset" class="btn btn-default" value="重置">重置</button>
            </div>
            </td>
        </tr>
    </table>
</form>

</body>
</html>
