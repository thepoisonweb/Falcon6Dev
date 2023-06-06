public  class DmlDemo {
    public static void dmlInsertDemo1() {
        
        account acc= new account();
        acc.Name = 'Salesforce';
        acc.Website = 'www.salesforce.com';

        insert acc;
        system.debug('inserted acc: '+acc);
    }
    public static void dmlInsertDemoC01() {
        Department__c  d= new Department__c() ;
        d.Name__c='Human Resource';
        d.Short_Code__c= 'HR';

        insert d;
    }
    public static void dmlInsertDemoC02() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c= 'Leardn DML';
        sp.Status__c = 'New';

        insert sp;
    }
    public static void dmlInsertDemoC03() {
        Employee__c emp = new Employee__c();
        
        emp.First_Name__c= 'Tom';
        emp.Last_Name__c= 'Hanks';
        emp.Country__c = 'USA';
        emp.JoinDate__c= Date.today();
        emp.Email__c='emp@mail.com';
        emp.Salary__c= 170000;

        insert emp;
    }
    public static void dmlUpdateDemo1() {
        Account acc= new Account();
        acc.Name = 'Softinnovas';
        system.debug('before insert DML '+acc);
        insert acc;
        system.debug('after insert DML '+acc);

        acc.Name = 'Softinnovas INC.';
        acc.Website= 'www.softinnovas.com';

        update acc;
        system.debug('after update DML '+acc);
    }
    public static void dmlUpdateDemo2() {
        account acc = [select name from account order by CreatedDate DESC LIMIT 1];
        acc.Name='Softinnovas Inc.';
        update acc;
    }
    public static void dmlInsertDemo3() {
        Account acc = [select name from account order by CreatedDate DESC LIMIT 1];
        Contact  c= new Contact();
        c.LastName= 'Biden';
        c.AccountId= acc.id;

        insert c;
    }
}