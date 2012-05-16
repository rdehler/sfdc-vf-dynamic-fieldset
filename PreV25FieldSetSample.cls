public class PreV25FieldSetSample {
    public Lead lead {get; set;}
    public PreV25FieldSetSample() {
    	lead = new Lead();
    }
    
    public PageReference save() {
        return null;
    }
}
