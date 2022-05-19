public class dataTableCon {

    List<Car__c> cars;

    public List<Car__c> getCars() {
        if(cars == null) 
            cars = [SELECT name FROM Car__c LIMIT 10];
        return cars;
    }

}