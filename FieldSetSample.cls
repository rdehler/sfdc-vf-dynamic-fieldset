public class FieldSetSample {
	public Map<String, List<String>> fieldSetMap {get; set;}
	public Map<String, String> fieldSetHeadings {get; set;}
	public List<String> fieldSetList {get; set;}
	public Lead lead {get; set;}
	
	public FieldSetTest() {
		Map<String, Schema.FieldSet> fieldSetDesc = Schema.SObjectType.Lead.fieldSets.getMap();
		fieldSetMap = new Map<String, List<String>>();
		fieldSetHeadings = new Map<String, String>();
		fieldSetList = new List<String>();
		lead = new Lead();

		for (String key : fieldSetDesc.keySet()) {
			fieldSetMap.put(key, new List<String>());
			fieldSetHeadings.put(key, fieldSetDesc.get(key).getLabel());
			fieldSetList.add(key);
			for (Schema.FieldSetMember member : fieldSetDesc.get(key).getFields()) {
				fieldSetMap.get(key).add(member.getFieldPath());
			}
		} 
	}
	
	public PageReference save() {
		return null;
	}
}
