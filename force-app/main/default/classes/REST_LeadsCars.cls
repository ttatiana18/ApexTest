@RestResource(urlMapping='/LeadCars/*')

global class REST_LeadsCars {
    @HttpGet
    global static List<Car__c> getLeadCars(){
        String leadId = RestContext.request.params.get('id');
        List<Car__c> cars = [Select id, full_name__c,registration_plate__c, full_price__c, model_year__c,price__c,tax__c FROM Car__c WHERE lead__c =: leadId];
        return cars;
    }
    
    @HttpPost
	global static void createNewLeadCar(String name,String registration_plate, String model_year,Double price,Double tax,Double down_payment,Double leasing){
        String leadId = RestContext.request.params.get('id');
        Lead__c lead = null;
        try{
            lead = [Select id FROM Lead__c WHERE id =: leadId];
            Car__c newCar = new Car__c();
            newCar.registration_plate__c = registration_plate;
            newCar.model_year__c = model_year;
            newCar.price__c = price;
            newCar.tax__c = tax;
            newCar.down_payment__c = down_payment;
            newCar.leasing__c = leasing;
            newCar.name__c = name;
            newCar.lead__c = lead.id;
            
            insert newCar;
            RestContext.response.responseBody = Blob.valueOf('Creación exitosa con id '+ newCar.id);
            
        }catch(Exception e){
            RestContext.response.responseBody = Blob.valueOf('Error '+ e.getMessage());
        }
    }
}