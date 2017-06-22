package PaperClip;


public class StackInformation {
	private StackState state;
	private String dataType;
	
	
	public StackInformation(){
		state=NonObject.getInstance();
		dataType="";
		
	}
	public StackInformation(String type){
		state=NonObject.getInstance();
		dataType=type;
		
	}
	public StackInformation(StackState state){
		this.state=state;
		dataType="";
		
	}
	public StackInformation(StackState state,String type){
		this.state=state;
		dataType=type;
		
	}
	
	public void createObject(){
		state.objectCreate(this);
	}
	
	public void pushMethod(String parameter){
		if(parameter.length()==0){
			state.nonParameter(this);
		}
		else if(dataType.equals("")){
			state.push(this);
			
		}
		else if(!dataType.equals(parameter)){
			state.differentTypePrameter(this);
		}
		else{
			state.push(this);
		}
	}
	public void popMethod(){
		state.pop(this);
		
	}
	public void peakMethod(){
		state.peak(this);
	}
	public void isEmptyMethod(){
		state.isEmpty(this);
	}
	
	public void setState(StackState state){
		this.state=state;
	}
	public String currentState(){
		return state.show();
	}

}
