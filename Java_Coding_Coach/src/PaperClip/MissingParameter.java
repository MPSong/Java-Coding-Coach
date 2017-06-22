package PaperClip;


public class MissingParameter implements StackState {
	private static  MissingParameter mp = new  MissingParameter();
	private  MissingParameter(){ }
	
	public static  MissingParameter getInstance(){
		return mp;
	}
	
	public void objectCreate(StackInformation info){
	//	info.setState(Stable.getInstance());
		
	}
	public void nonParameter(StackInformation info){
		//info.setState(state);
		//무반응
	}
	public void differentTypePrameter(StackInformation info){
		//
	}
	public void push(StackInformation info){
		info.setState(Stable.getInstance());
		
	}
	public void peak(StackInformation info){
		
	}
	public void pop(StackInformation info){
		
	}
	public void isEmpty(StackInformation info){
		
	}
	public String show(){
		return "파라미터를 넣어주세요.";
	}

}
