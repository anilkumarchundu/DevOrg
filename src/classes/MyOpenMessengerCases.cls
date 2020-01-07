public with sharing class MyOpenMessengerCases {
    
      public boolean updatedCaseList{ get; set; }
      Transient Case[] cases;
      String currentUser = UserInfo.getUserId();
     
      String query = 'SELECT ID, CaseNumber, OwnerID, AccountId, Status FROM Case where OwnerID =: currentUser LIMIT 30';    
      public MyOpenMessengerCases(){
          updatedCaseList = false;
      } 
    
      public Case[] getCases() {
        cases = Database.query(query);
        if (cases.size() > 0) {
            updatedCaseList = true;
        }
        return cases;
      }
    
      
}