package com.cowboy.servelt;

import java.util.Collection;
import java.util.HashSet;

import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;
import org.directwebremoting.ScriptSessions;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.proxy.dwr.Util;

public class DwrPush {
	
	public  void push(String msg){
		  //得到上下文  
        WebContext contex = WebContextFactory.get();  
          
        //得到要推送到 的页面  dwr3为项目名称 ， 一定要加上。  
        Collection<ScriptSession> sessions =contex.getAllScriptSessions();  
          
        //不知道该怎么解释这个 ，   
        Util util = new Util(sessions);  
          
        //下面是创建一个javascript脚本 ， 相当于在页面脚本中添加了一句  show(msg);   
        ScriptBuffer sb = new ScriptBuffer();  
        sb.appendScript("hello(");  
        sb.appendData(msg);  
        sb.appendScript(")");  
          
        //推送  
        util.addScript(sb);  
		//ScriptSessions.addFunctionCall("hello", "tt:"+msg);
	}
}
