public class AccountHandler {
    public static Account insertNewAccount(String accName){
        Account acct = new Account(Name=accName);
        try{
       	 		insert acct;
             	return acct;
        }catch(DmlException ex){
            return null;
        }
    }
}