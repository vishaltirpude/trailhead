public class DailyLeadProcessor implements Schedulable{
    
    public void execute(SchedulableContext ctx) {
        List<Lead> listToUpdate = new List<Lead>();
        List<Lead> leadList = [SELECT Id, Name FROM Lead 
            WHERE LeadSource = null LIMIT 200];
        for(Lead l : leadList){
            l.LeadSource = 'Dreamforce';
            listToUpdate.add(l);
        }
        update listToUpdate;
    }

}