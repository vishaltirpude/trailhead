@isTest
public class LeadProcessorTest {
	
    @testsetup
    public static void createTestData(){
        List<Lead> leads = new List<Lead>();
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead (LeadSource = 'Lead'+i, LastName = 'LastName'+i, Company = 'Company'+i));
        }
        insert leads;
    }
                      
  static testmethod void test() {        
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
    }
}