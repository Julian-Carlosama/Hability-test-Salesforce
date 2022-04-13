trigger CarTotalPrice on Car__c(before insert, before update){
	//The tigger sould take the Price value and add Tax Value,
	// And asigned this to Fullprice field.

	for(Car__c ReCar : Trigger.New){
        if(ReCar.Price__c!=null){
            decimal all = 0;
            decimal fullP = 0;
        	decimal tax = ReCar.Tax__c;
            decimal price = ReCar.Price__c;
            all = tax + price;
            fullP = all;
            ReCar.Full_Price__c = fullP;
		}
	}    
}