trigger CarTrigger on Car__c (before insert,before update) {

   Car__c[] cars = Trigger.new;

   CarTaxes.applyTax(cars);
}