public class LeadBatch implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {

        Database.QueryLocator lea =Database.getQueryLocator([SELECT id FROM Lead WHERE LeadSource='Web']);
        return lea;
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope) {

        for (Lead eachLead : scope) {
            eachLead.Description='Updated by Scheduled batch at ('+Datetime.now()+')';
        }
        update scope;
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Batch Processed.');
    }

}