<!DOCTYPE html/>
<html>
<head>
<title>dwr</title>
<script type='text/javascript' src='js/dwr/engine.js'></script>
<script type='text/javascript' src='js/dwr/util.js'></script>
<script type='text/javascript' src='js/dwr/interface/DwrPush.js'></script>
<script type="text/javascript" src='http://apps.bdimg.com/libs/jquery/1.10.1/jquery.min.js'></script>
<script type="text/javascript">
		$(function(){
			dwr.engine.setActiveReverseAjax(true);
		});
	   function sendMessage()  
        {  
            //var message = document.getElementById("message").value;  
           // alert(message);  
            //直接用dwr.xml中暴露出来的类来调用，第一个是方法test的传入参数，最后一个是回调的方法  
            var msg = $(":input[name='name']").val();
            DwrPush.push(msg);  
        }  
        /*//回调方法  
        function showMessage(data)  
        {alert(data);}  */
        
        function hello(msg){
        		var html = $("#content").html();
        		$("#content").html(html +"<br/>" +msg);
        }
</script>
</head>
<body>
	<p id="content"></p>
	name:<input type="text" name = "name" /><br/>
	<input type="button" value="click" onclick="sendMessage()"/>
</body>
</html>