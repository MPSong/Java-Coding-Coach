package PaperClip;


public class DifferentType implements StackState {

private static DifferentType differentType = new DifferentType();
	
	private DifferentType(){ }
	
	public static DifferentType getInstance(){
		return differentType;
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
		return "선언한 스택의 원소의 자료형과 스택에 넣는 자료형이 다릅니다.";
	}
}
