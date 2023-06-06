public class ContactsBatch implements Database.Batchable<SObject>,Database.stateful {
    
    public Database.QueryLocator start(Database.BatchableContext bc){

        Database.QueryLocator con = Database.getQueryLocator([SELECT id,Description FROM Contact]);
        return con;
    }
    public void execute(Database.BatchableContext bc, List<Contact> listCon){

        List<Contact> updateCon = new List<Contact>();
        for (Contact eachCon : listCon) {
            eachCon.Description+='Updated by Batch';
            updateCon.add(eachCon);
        }
        update updateCon;
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Batch Over');
    }
}