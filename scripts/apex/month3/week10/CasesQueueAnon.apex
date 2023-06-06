Account ac = new account(name = 'Default Acc');
insert ac;

List<case> allCase = [SELECT id,AccountId FROM Case WHERE AccountId = null ];

CasesQueueable cq2 = new CasesQueueable(ac.id, allCase);

System.enqueueJob(cq2);