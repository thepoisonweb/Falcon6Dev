
    public class BatchApex15 implements Database.Batchable<sObject>,Database.stateful {
        
        public integer recordSayisi = 0;
        public integer scopeSayisi = 0;
         
        public Database.QueryLocator start(Database.BatchableContext BC) {
            Database.QueryLocator q1 = Database.getQueryLocator([SELECT id,name,annualRevenue FROM Account]);
            return q1;
        }
    
        public void execute(Database.BatchableContext BC, List<Account> scope) {
            scopeSayisi++;
            recordSayisi+=scope.size();
            List<Account> updateAccounts = new List<Account>();
            for (Account acc : scope) {
                acc.Name+= ' update';
                if (acc.AnnualRevenue==null) {
                    acc.AnnualRevenue = 10000;
                }
                updateAccounts.add(acc);
            }
            update updateAccounts;
        }
    
        public void finish(Database.BatchableContext BC) {
            System.enqueueJob(new Queueable15first());
            system.debug('islemimiz '+scopeSayisi+' defa execute edildi');
            System.debug('Islem basari ile gerceklesti');
        }
}