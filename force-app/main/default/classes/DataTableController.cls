public class DataTableController {
    List<Car__c> cars;
    
    public List<Car__c> getCarList(){
        if(cars == null)
        	cars = [SELECT full_name__c, price__c, tax__c,model_year__c,registration_plate__c, full_price__c FROM Car__c];
        return cars; 
    }
        
}