@isTest
public class DmlDemo15Test {
    @isTest
    private static void testDML1() {
        DmlDemo15.dmlInsertDemo1();

        List<Account> listAcc= [SELECT id,name FROM Account];

        assert.areEqual(1, listAcc.size());

        Assert.areEqual('Salesforce', listAcc[0].name);
    }
    @isTEst
    private static void testdmlinsertDemoC01(){
        DmlDemo15.dmlInsertDemoCO1();

        list<department__c> listdep = [select id, name__c from department__c];
        assert.areequal(1, listdep.size());
        Assert.areEqual('Human Resource', listdep[0].name__c);
    }
    @isTest
    private static void testDmlDemoC02() {

        DmlDemo15.dmlInsertDemoCO2();

        list<Salesforce_Project__c> listsp = [select id,Project_Name__c,Status__c from Salesforce_Project__c];
        assert.areequal(1, listsp.size());
        Assert.areEqual('Learn DML', listsp[0].project_Name__c);
        Assert.areEqual('New', listsp[0].Status__c);
    }
    // @isTest
    // private static void testDMLUpdateDemo1() {

    //     Account acc1=new Account(name = 'acc test1');
    //     insert acc1;
        
    //     update acc1;

    //     DmlDemo15.dmlUpdateDemo1();

    //     account  AccAssert1 =[SELECT id, name,Website FROM Account WHERE id =:acc1.id ];
    //     Assert.areEqual('Softinnovas INC.', AccAssert1.Name);
    //     Assert.areEqual('www.softinnovas.com', AccAssert1.Website);
    // }
    @isTest
    private static void testDMLUpdateDemo2() {

        Account acc3=new Account(name = 'acc test2');
        insert acc3;

        DmlDemo15.dmlUpdateDemo2();

        account  AccAssert2 =[SELECT id, name FROM Account WHERE id =:acc3.id ];
        Assert.areEqual('Softinnovas Inc.', AccAssert2.Name);
    }
    @isTest 
    private static void testInsertRelatedRec2() {
        Department__c d = new Department__c(Name__c= 'QA');
        insert d;

        DmlDemo15.insertRelatedRec2();

        Employee__c emp =[SELECT id,name,first_name__c,last_name__c,Department__c FROM Employee__c WHERE Department__c=:d.id limit 1];
        Assert.areEqual('Don', emp.First_Name__c);
    }
    @isTest 
    private static void testBulkUpdateRight() {
        List<account> listAcc = new list<account>();
        for (Integer i = 0; i < 155; i++) {
            account ac = new account();
            ac.Name = 'test acc ' + i;
           
            //add account to list
            listAcc.add(ac);
        }

        //if list is not empty then only insert
        if (!listAcc.isEmpty()) {
            insert listAcc;//insert 155 accounts
        }
        Test.startTest();
        DmlDemo15.bulkUpdateRight();
        Test.stopTest();

        Account acc=[SELECT id ,name FROM Account LIMIT 1];
        Assert.isTrue(acc.Name.contains('v2'));
    }
}