@isTest 
public class CasesQueueableTest {
    
    @isTest 
    public static void testCases1() {

        list<case> listCase = new list<case>();

        for (Integer i = 0; i < 505; i++) {
        Case c = new case(subject = 'there is a bug', Description = 'resolve it man', Status = 'New', Origin ='Web' );
        listCase.add(c);
        }
        insert listCase;
        Account ac = new Account(name= 'Default Test Acc');
        insert ac;

        Test.startTest();
        CasesQueueable cq2 = new CasesQueueable(ac.Id, listCase);
        System.enqueueJob(cq2);
        test.stopTest();

        list<Case> allCases = [SELECT id FROM Case where AccountId!=null];
        Assert.areEqual(505, allCases.size());
        
    }
}