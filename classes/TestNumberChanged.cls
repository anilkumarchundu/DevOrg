public with sharing class TestNumberChanged {
    public static List<ID> testsAlreadyProcessed = new List<ID>();
    
	@InvocableMethod
	public static void processNumberChange (List<Test__c> tests) {
        System.debug('In TestNumberChanged.processNumberChange');

		for(Test__c test : tests){
			if(!testsAlreadyProcessed.contains(test.id)){
                testsAlreadyProcessed.add(test.id);
                System.debug('test id ' + test.id + ' not yet processed');
				
            }else{
                System.debug('test id ' + test.id + ' already processed');
            }
		}
	}
}