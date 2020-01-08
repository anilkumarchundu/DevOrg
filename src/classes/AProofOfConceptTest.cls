@isTest
public class AProofOfConceptTest {

   testMethod static void testSimplestCase() {
        // Create an account
        Account acc = new Account();
        acc.Name = 'Test123';
        acc.ShippingCity='Pittsburgh';
        insert acc;

      
       Account acc1 = new Account();
        acc1.Name = 'Test123';
        acc1.ShippingCity='Pittsburgh';
        insert acc1;
        // Create a case associated with the test account
        Case testCase = new Case(Status='New', Origin='Email', Account = acc);
        insert testCase;
        
        system.debug('==>test case'+testCase.Origin);
    }
}
