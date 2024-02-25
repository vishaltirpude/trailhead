@IsTest
public class TestVerifyDate {
    
    static testMethod void verifyDateTest(){
        VerifyDate.CheckDates(System.today(),System.today().addDays(10));
        VerifyDate.CheckDates(System.today(),System.today().addDays(78));
    }

}