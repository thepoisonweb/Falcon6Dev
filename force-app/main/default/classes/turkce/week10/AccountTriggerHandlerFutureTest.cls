@isTest
public class AccountTriggerHandlerFutureTest {
    @isTest 
    private static void updateDescription() {
        Account acc = new Account();
        acc.Name='Account future test';
        insert acc;

        Opportunity opp = new Opportunity();
        opp.Name='Opportunity Future Test';
        opp.CloseDate= date.today().addDays(30);
        opp.StageName='Prospecting';
        opp.AccountId = acc.id;
        insert opp;

        Contact con  = new Contact();
        con.LastName='Contact Future Test';
        con.AccountId=acc.Id;
        insert con;

        acc.Description='Account Future metot ile bu mesaj eklendi';
        test.startTest();
        update acc;
        test.stopTest();

        Opportunity opp1 = [SELECT id,description FROM Opportunity WHERE AccountId=: acc.id limit 1];

        Assert.isNotNull(opp1.Description);

        Contact con1 = [SELECT id,description FROM Contact WHERE AccountId=:acc.Id limit 1];
        Assert.isNotNull(con1.Description);
    }
}