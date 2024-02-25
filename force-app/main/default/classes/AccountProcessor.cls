public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accountIds){
        List<Account> accList = [SELECT Id, Number_of_Contacts__c, Name, (SELECT Id, Name from Contacts) from Account WHERE Id IN :accountIds];
        for(Account acc : accList){
            List<Contact> contactList = acc.Contacts;
            acc.Number_of_Contacts__c = contactList.size();
        }
        update accList;
        
    }

}