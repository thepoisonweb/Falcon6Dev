public class DepartmentBatch implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        system.debug('inside start method');
        return Database.getQueryLocator([SELECT id,number_of_employees__c,(SELECT id FROM employees__r) FROM Department__c]);
    }

    public void execute(Database.BatchableContext BC, List<Department__c> scopeDep) {
        System.debug('inside execute method');
        for (Department__c eachDep : scopeDep) {
            if (eachDep.Employees__r!=null) {
                eachDep.number_of_employees__c=eachDep.Employees__r.size();
            }
        }
        update scopeDep;
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('finished');
    }

}





