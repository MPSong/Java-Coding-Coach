package PaperClip;

import java.util.HashMap;
import java.util.Iterator;

public class PaperClip {
	private String[] message;  //message table을 만들어 처리
	
	public PaperClip(){
		
	}
	
	/*mode(경우를 판별해)를 이용해서 message를 탐색한다.*/
	public String searchMessage(String mode){
		Parser parser = new Parser();
		message = mode.split("\n");
		for(String s:message){
			 parser.parseStack(s);
		}
		
		HashMap<String,StackInformation> stack=parser.getStackState();
		
		String result="";
		 Iterator<String> keys = stack.keySet().iterator();
	        while( keys.hasNext() ){
	            String key = keys.next();
	            //System.out.println( String.format("키 : %s, 값 : %s", key, map.get(key)) );
	            if(stack.get(key).currentState()!=null)
	            	result += key + " : " + stack.get(key).currentState() + "</br>";
	        }


		
		return result;
	}
	
	
}
