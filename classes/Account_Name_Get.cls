public with sharing class Account_Name_Get{

    public String Account { get; set; }

    public Account_Name_Get(ApexPages.StandardController controller) {

    }

    private ID theAccount;
    public String AccountName {get;set;}
    
    public Account_Name_Get(){
        ID temp = ApexPages.CurrentPage().getparameters().get('AccountId');
        this.AccountName = [SELECT Name FROM Account WHERE Id = :temp].Name;
        
    }
}