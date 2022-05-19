@RestResource(urlMapping='/Leads/*')
global class REST_Leads{
    @HttpGet
    global static List<Lead__c> getLeads(){
        List<Lead__c> leads = [Select id, name__c, dni__c, labor_rate__c, zip_code__c FROM Lead__c];
        return leads;
    }
}