public class AccountControllerDemo {
    
    @AuraEnabled
    public static List<Account> getAccountList(){
        system.debug('In get Acoount list method...');
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 10];
        return accList;
    }
    
    @AuraEnabled
    public static void createAccount(Account acc){
        system.debug('In get Acoount creation method...'+acc.name);
        upsert acc;
    }

}