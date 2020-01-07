trigger holidaydeletion on Holiday_Calendar__c ( after delete) {

 system.debug('-->'+System.currentpageReference().getParameters());

}