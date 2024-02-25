@IsTest
public class AccountProcessorTest {
    
    @IsTest
    public static void testAccountProcessor(){
        
        Account accObj = new Account();
        accObj.Name = 'Test Account';
        insert accObj;
        
        Contact conObj = new Contact();
        conObj.LastName = 'Test Contact 1';
        conObj.AccountId = accObj.Id;
        
        Contact conObj2 = new Contact();
        conObj2.LastName = 'Test Contact 2';
        conObj2.AccountId = accObj.Id;
        
        List<Id> accIds = new List<Id>();
        accIds.add(accObj.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(accIds);
		Test.stopTest();   
        Account accountResult = [SELECT Number_of_Contacts__c FROM Account WHERE Id =:accObj.Id LIMIT 1];
        System.assertEquals(accountResult.Number_of_Contacts__c, 2);
        
    }

}