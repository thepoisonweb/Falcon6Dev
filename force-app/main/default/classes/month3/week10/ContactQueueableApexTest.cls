@isTest
public  class ContactQueueableApexTest {
    @isTest
    public static void TestContact() {

        List<Account> accList = new List<Account>();

        for (Integer i = 0; i < 111; i++) {
            Account acc = new Account();
            acc.Name='testCon Queue '+i;
            acc.Active__c= 'Yes';
            accList.add(acc);
        }
        insert accList;

        test.startTest();
        ContactQueueableApex conq = new ContactQueueableApex(accList);
        system.enqueueJob(conq);
        test.stopTest();

        List<Account> allAcc =[SELECT id,name,(SELECT id FROM Contacts)FROM Account];
        for (Account eachAcc : allAcc) {
            Assert.areEqual(1,  eachAcc.Contacts.size());
        }
    }    
}