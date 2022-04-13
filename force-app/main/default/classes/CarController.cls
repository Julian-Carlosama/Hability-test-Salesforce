public with sharing class CarController {

    private Id CarId;
    private LIst<Car__c> cars;
    private ApexPages.StandardController Car_controller;
    
    //Constructor

    public CarController(ApexPages.StandardController controller)
    {
        Car_controller = controller;
        CarId = Car_controller.getRecord().Id;
        cars = calculateOpportunities(CarId);
    }
   
    public List<Car__c> getOpportunityList()
    {
        return cars;
    }

    public void setOpportunityList(List<Car__c> value)
    {
        cars = value;
    }

    private List<Car__c> calculateOpportunities(Id accId)
    {
        List<Car__c> oppList = [SELECT Id, Name, Model_Year__c, Registration_Plate__c, Price__c, Leasing__c FROM Car__c];
        return oppList;
    }
}