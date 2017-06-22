package PaperClip;


public class Stable implements StackState {
	private static Stable stable = new Stable();
	
	private Stable(){ }
	
	public static Stable getInstance(){
		return stable;
	}
	
	public void objectCreate(StackInformation info){
		
		
	}
	public void nonParameter(StackInformation info){
		info.setState(MissingParameter.getInstance());
	}
	public void differentTypePrameter(StackInformation info){
		info.setState(DifferentType.getInstance());
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
		return null;
	}
}
