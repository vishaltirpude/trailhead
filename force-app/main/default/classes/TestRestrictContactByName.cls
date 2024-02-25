@isTest
public class TestRestrictContactByName {
    
    	@isTest static void testContactInsert(){
        
        Contact contactObj1 = new Contact(lastName = 'INVALIDNAME');
        Contact contactObj2 = new Contact(lastName = 'MESHRAM');
            
        List<Contact> conList = new List<Contact>();
        conList.add(contactObj1);
        conList.add(contactObj2);
        
        Test.startTest();
		insert conList;
        Test.stopTest();
    }

}