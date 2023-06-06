public class SoqlDemo15 {
    public static void oppAccQuery() {
        List<Opportunity> listOpp = [select id, name, amount, account.name, account.industry from opportunity where account.industry = 'energy'];

        for (Opportunity eachOpp : listOpp) {
            System.debug('opp name is '+eachOpp.Name+' , opp amount is '+eachOpp.Amount);
            system.debug('Account name is '+eachOpp.Account.Name+' industry is '+eachOpp.Account.Industry);
            System.debug('---------');
        }
    }
    public static void accContactQuery() {
        List<Account> accList = [SELECT id, name, website, (select name, email from Contacts) from account];

        for (Account eachAcc : accList) {
            System.debug('each acc is '+eachAcc.Name);
            List<Contact> accContacts = eachAcc.Contacts;
            if (!accContacts.isEmpty()) {
                system.debug(eachAcc.Name+'account has '+ accContacts.size()+' contacts');
                for (Contact eachCon : accContacts) {
                     system.debug('contact name is '+eachCon.Name+' email is '+eachCon.Email )   ;
                    }
                }else {
                    System.debug('*** NO contact founf fot thus account ***');
                }
            

            System.debug('-------------');
        }
    }
    public static void departmentDetails() {
        list<department__c> listDept= [SELECT Name__c, (SELECT first_name__c, last_name__c, country__c, salary__c FROM employees__r) FROM Department__c];
        
        Decimal totalSalary=0;
        for (Department__c eachDept : listDept) {
            System.debug('dept name is '+eachDept.Name__c);
            List<Employee__c> listEmp = eachDept.Employees__r;

            decimal deptSalary = 0;
                        
            for (Employee__c eachEmp : listEmp) {
                System.debug('Name is '+eachEmp.First_Name__c+' '+eachEmp.Last_Name__c+' , country is '+eachEmp.Country__c);
                deptSalary+=eachEmp.Salary__c;
                totalSalary += eachEmp.Salary__c;
            }
            System.debug('department total salary is '+deptSalary);
        }
        System.debug('overall total salary is '+totalSalary);
    }
}