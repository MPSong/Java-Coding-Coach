package PaperClip;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Parser {
	
	private HashMap<String,StackInformation> stack = new HashMap<String,StackInformation>();
	private HashMap<String,String> otherid = new HashMap<String,String>();
	public Parser(){
		
	}
	
	public void parseStack(String code){
		parsingStackType1(code);
		parsingStackType2(code);
		parsingStackType3(code);
		parsingStackType4(code);
		parsingStackType5(code);
		parsingValue(code);
		methodMatch(code);
		methodMatch2(code);
		
	}
	public HashMap getStackState(){
		return stack;
	}
	public HashMap parseValue(String code){
		 parsingValue(code);
		return otherid;
	}
	
	private void parsingStackType1(String input){
		
		Pattern pa = Pattern.compile("^.\\s*Stack\\s+([_0-9a-zA-Z]*)\\s+\\,*(.*)\\=\\s*new\\s+Stack(.*)\\;$");
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
			
			stack.put(mat.group(1),new StackInformation(Stable.getInstance()));
		}
	}
	
	private void parsingStackType2(String input){
		Pattern pa = Pattern.compile("^.\\s*Stack\\s+([_0-9a-zA-Z]*)\\s*\\,*([_0-9a-zA-Z]*)\\;$");
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
	
			stack.put(mat.group(1),new StackInformation());
		}
		
	}
	private void parsingStackType3(String input){
		Pattern pa = Pattern.compile("^.\\s*Stack\\<([_0-9a-zA-Z]*)\\>\\s+([_0-9a-zA-Z]*)\\,*(.*)\\=\\s*new\\s+Stack(.*)\\;");
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
			stack.put(mat.group(2),new StackInformation(Stable.getInstance(),mat.group(1)));
		}
		
	}
	private void parsingStackType4(String input){
	
		Pattern pa = Pattern.compile("^.\\s*Stack\\<([_0-9a-zA-Z]*)\\>\\s+([_0-9a-zA-Z]*)\\,*([_0-9a-zA-Z]*)\\;");
	
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
		
			stack.put(mat.group(2),new StackInformation(mat.group(1)));
		}
		
		
	}
private void parsingStackType5(String input){
		
		Pattern pa = Pattern.compile("^.\\s*([_0-9a-zA-Z]*)\\s*\\=\\s*new\\s+Stack(.*)\\;$");
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
			
			stack.get(mat.group(1)).createObject();
		}
	}
	
	private void parsingValue(String input){
		
		Pattern pa = Pattern.compile("^.\\s*(String|int)\\s+([_0-9a-zA-Z]+)\\s*\\=*(.*)\\;$");
		
		Matcher mat = pa.matcher(input);
		if(mat.matches()){
			otherid.put(mat.group(1), mat.group(2));
		}
		
	}
	private void methodMatch(String input){
		Pattern pa = Pattern.compile("^.\\s*(.*)\\.push\\s*\\(\\s*([0-9]*)(.*)\\s*\\)\\s*\\;$");
		Matcher mat = pa.matcher(input);
		
		if(mat.matches()){
;
			String tmptype=mat.group(2);
			String idType =otherid.get(mat.group(3))+"";
			StackInformation tmp = stack.get(mat.group(1));
			if(tmp==null) {
				stack.put(mat.group(1), new StackInformation());
				tmp = stack.get(mat.group(1));
			}
			if(!(tmptype.equals(""))||idType.equals("int")){
				stack.get(mat.group(1)).pushMethod("Integer");
			}
			
			else if(mat.group(2).equals("")&&mat.group(3).equals("")){
				stack.get(mat.group(1)).pushMethod("");
			}
			else if(idType.equals("String")||(mat.group(3).charAt(0)=='"'&&mat.group(3).charAt(mat.group(3).length()-1)=='"')){
				stack.get(mat.group(1)).pushMethod("String");
			}
			else{
				stack.get(mat.group(1)).pushMethod(mat.group(3));
				System.out.println("unknown type parameter push");
			}
			
		}
	}
	private void methodMatch2(String input){
		Pattern pa = Pattern.compile("^.\\s*([_0-9a-zA-Z]+)\\.(pop|isEmpty|peak)\\s*\\(\\s*\\)\\s*\\;$");
		Matcher mat = pa.matcher(input);
		
		if(mat.matches()){
			StackInformation tmp = stack.get(mat.group(1));
			if(tmp==null) {
				stack.put(mat.group(1), new StackInformation());
				tmp = stack.get(mat.group(1));
			}
			if(mat.group(2).equals("pop")) tmp.popMethod();
			else if(mat.group(2).equals("peak")) tmp.peakMethod();
			else if(mat.group(2).equals("isEmpty")) tmp.isEmptyMethod();
	
			
		}
	}
}
