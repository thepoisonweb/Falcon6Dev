List<Account> accList = [SELECT id,Name FROM Account Where createdDate = last_month];

AccountQueueableExample aqe = new AccountQueueableExample(accList);
Id JobID = System.enqueueJob(aqe);
System.debug('jobID'+JobID);

syncApexJob ap = [SELECT Status, JobType, JobItemsProcessed, Id, MethodName, NumberOfErrors FROM AsyncApexJob where id = :queueId];
system.debug(ap);