List<Account> accList = [SELECT id,Name,Active__c FROM Account WHERE active__c='yes'];

ContactQueueableApex conqe = new ContactQueueableApex(accList);
Id JobID = system.enqueueJob(conqe);

