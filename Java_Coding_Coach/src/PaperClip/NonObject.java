package PaperClip;


public class NonObject implements StackState {

	private static NonObject nonObject = new NonObject();
	
	private NonObject(){ }
	
	public static NonObject getInstance(){
		return nonObject;
	}
	
	public void objectCreate(StackInformation info){
		info.setState(Stable.getInstance());
		
	}
	public void nonParameter(StackInformation info){
		//info.setState(state);
		//무반응
	}
	public void differentTypePrameter(StackInformation info){
		//무반응
	}
	public void push(StackInformation info){
		//무반응
		
	}
	public void peak(StackInformation info){
		
	}
	public void pop(StackInformation info){
		
	}
	public void isEmpty(StackInformation info){
		
	}
	public String show(){
		return "객체가 없습니다.";
	}
}
