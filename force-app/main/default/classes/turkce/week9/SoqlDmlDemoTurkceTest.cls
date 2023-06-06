@isTest
public class SoqlDmlDemoTurkceTest {
    @isTest 
    private static void getAccWithOppTest() {
        List<Account> listAcc = new List<Account>();
        account acc1 = new Account();
        acc1.name='Demo 1';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.name='Demo 2';
        listAcc.add(acc2);

        insert listAcc;

        List<Opportunity> listOpp= new List<Opportunity>();
        for (Account acc : listAcc) {
            Opportunity opp = new Opportunity();
            opp.Name='Opportunity';
            opp.CloseDate=Date.today().addDays(30);
            opp.StageName='Prospecting';
            opp.AccountId=acc.id;
            listOpp.add(opp);
        }
        insert listOpp;
        test.startTest();
        integer accSys = SoqlAndDmlDemoTurkce.getAccWithOpp();
        Test.stopTest();
        Assert.areEqual(2, accSys);
    }
    @isTest 
    private static void createAccounTest() {
        test.startTest();
        SoqlAndDmlDemoTurkce.createAccount('Softinnovas');
        test.stopTest();
        Account acc=[SELECT id,name FROM Account LIMIT 1];
        Assert.areEqual('Softinnovas', acc.Name);
        List<Contact> listCon = [SELECT id FROM Contact];
        Assert.isTrue(listCon.size()>0);
    }
}