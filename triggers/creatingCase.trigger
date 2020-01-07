trigger creatingCase on LiveChatTranscript ( before insert) {
    Case c = new Case(Origin='Phone', Subject='Test Case info', contactId='0037F000007xfUb');
    insert c;
    
    LiveChatTranscript a = Trigger.New[0];
    a.caseId= c.id;
    a.contactid=c.contactID;
    //update c;
   
    

}