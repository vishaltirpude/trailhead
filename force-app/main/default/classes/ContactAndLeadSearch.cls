public class ContactAndLeadSearch {
    
    public static List<List< SObject>> searchContactsAndLeads(String param){
        List<List<SObject>> searchList = [FIND :param IN ALL FIELDS 
                                      RETURNING Contact(FirstName, LastName), Lead(FirstName,LastName)];
        return searchList;
    }

}