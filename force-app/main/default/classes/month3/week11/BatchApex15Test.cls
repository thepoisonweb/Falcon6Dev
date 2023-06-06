@isTest
public class BatchApex15Test {
    @TestSetup
    static void makeData(){
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 950; i++) {
            Account acc= new Account();
            acc.Name='Account '+i;
            accList.add(acc);
        }
        insert accList;
    }
    @isTest 
    private static void batchClassTest() {
        BatchApex15 b15 = new BatchApex15();
        test.startTest();
        Database.executeBatch(b15, 950);
        test.stopTest();

        List<Account> updateAccList = [SELECT id,Name,AnnualRevenue FROM Account];

        for (Account eachAcc : updateAccList) {
            Assert.isTrue(eachAcc.Name.contains('update'));
            assert.areEqual(10000, eachAcc.AnnualRevenue);
        }

        List<Contact> conList =[SELECT id FROM Contact];
        assert.areEqual(950, conList.size());
    }
}