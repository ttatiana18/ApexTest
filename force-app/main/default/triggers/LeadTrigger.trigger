trigger LeadTrigger on Lead__c (before insert) {
	Lead__c[] leads = Trigger.new;
    
    LeadLaborRate.setLaborRate(leads);
}