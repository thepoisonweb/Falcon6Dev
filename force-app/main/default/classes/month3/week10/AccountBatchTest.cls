@isTest 
public class AccountBatchTest {
    @isTest 
    public static void testBatch1() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            Account ac = new Account();
            ac.Name = 'test acc '+i;

            listAcc.add(ac);
        }
        insert listAcc;
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab,900);
        Test.stopTest();

        List<Account> allAccounts = [SELECt id,Description FROM Account];
        for (Account eachAcc : allAccounts) {
            Assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
        }
    }
}