@isTest
public class SoqlDemo15Test {
    @TestSetup
    static void makeData(){
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 15; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
            ac.Industry='Energy';
           
            listAcc.add(ac);
        }
        insert listAcc;

        List<Opportunity> listOpp= new List<Opportunity>();
        for (Integer i = 0; i < 30; i++) {
            Opportunity opp = new Opportunity(name='test opp',StageName='New',CloseDate=date.today(),Amount=50000,AccountId=listAcc[0].Id);
            listOpp.add(opp);
        }
        insert listOpp;
    }
    @isTest
    private static void testSoql1() {
        SoqlDemo15.oppAccQuery();
    }
    @IsTest
    static void testSoql2(){
        
        
    }
}
