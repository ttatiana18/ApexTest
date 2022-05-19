public class CarTaxes{
   public static void applyTax(Car__c[] cars) {
      for (Car__c car :cars){
         car.full_price__c = car.price__c + car.tax__c;
      }
   }
}