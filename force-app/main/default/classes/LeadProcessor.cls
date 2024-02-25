global class LeadProcessor implements Database.Batchable<sObject>, Database.Stateful{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, Name FROM Lead');
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope){
        List<Lead> leadListToUpdate = new List<Lead>();
        for (Lead obj : scope) {
            obj.LeadSource = 'Dreamforce';
            leadListToUpdate.add(obj);
        }
        update leadListToUpdate;
    }
    
    global void finish(Database.BatchableContext bc){
        System.debug(' records processed');
    }  

}