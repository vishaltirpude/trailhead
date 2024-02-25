@isTest
public class TestAccountDeletion {
    
    	@isTest static void testAccountWithContacts(){
        
            Account acc = new Account (name='Test Account');
            insert acc;
            Contact con = new Contact(lastname='Test Contact', AccountId=acc.Id);
            insert con;
            
            Test.startTest();
            Database.DeleteResult result = Database.delete(acc, false);
            Test.stopTest();
            System.assert(!result.isSuccess());
            
    	}

}