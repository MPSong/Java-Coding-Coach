package PaperClip;


public interface  StackState {
	
	public void objectCreate(StackInformation info);
	public void nonParameter(StackInformation info);
	public void differentTypePrameter(StackInformation info);
	public void push(StackInformation info);
	public void peak(StackInformation info);
	public void pop(StackInformation info);
	public void isEmpty(StackInformation info);
	public String show();

}
