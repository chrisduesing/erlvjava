
public class SingleAssignment {

    private String name;
    private Integer size;

    public SingleAssignment setName(String newName){
	
	SingleAssignment newObject = new SingleAssignment();
	newObject.name = newName;
	newObject.size = size;
	return newObject;
    }

}