public class ContactAura {
    
    @AuraEnabled
    public static List<Contact> get10Contacts(){
        system.debug('aura method called...');
        return [SELECT ID, NAME FROM Contact Limit 10];
    }
    
    @AuraEnabled
    public static Account saveAccount(Account acc){
        upsert acc;
        return acc;
    }

}