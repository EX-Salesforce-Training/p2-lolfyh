public class PlayerStatus {
    @AuraEnabled
	public string first_name;
    @AuraEnabled
    public integer height_feet;
    @AuraEnabled
    public integer height_inches;
    
    @AuraEnabled
    public string last_name;
    @AuraEnabled
    public string position;
    @AuraEnabled
    public integer weight_pounds;
    @AuraEnabled
    public Map<string,string> team;
    
}