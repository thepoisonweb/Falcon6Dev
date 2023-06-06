public class AccountsBatch implements Database.Batchable<SObject>,Database.stateful {
   integer countRecords =0 ;

    public Database.QueryLocator start(Database.BatchableContext bc){

        system.debug('batch started');
        Database.QueryLocator acc = Database.getQueryLocator([SELECT id,name,description, active__c FROM Account]);
        return acc;
    }
    public void execute(Database.BatchableContext bc, List<Account> listAcc){

        system.debug('execure method started');

        List<Account> updateAcc = new List<Account>();
        for (Account ac : listAcc) {
            if (ac.Active__c!='No') {
                ac.Description+='..Updated via batch';
                updateAcc.add(ac);
            }
        }
        update updateAcc;
        countRecords +=updateAcc.size();
        system.debug('records update in This Chunk '+updateAcc.size());
        system.debug('Total records updated TILL NOW '+countRecords);
    }
    public void finish(Database.BatchableContext bc){
        system.debug('BATCH PROCESSED.ENJOY.');
        System.debug('Total records processed is '+countRecords);
    }

}