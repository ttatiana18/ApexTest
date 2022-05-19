public class LeadLaborRate {
   public static void setLaborRate(Lead__c[] leads) {
      for (Lead__c lead :leads){
         lead.labor_rate__c = AGSLaborRateCallout.getLaborRate((integer)Lead.zip_code__c);
      }
   }
}