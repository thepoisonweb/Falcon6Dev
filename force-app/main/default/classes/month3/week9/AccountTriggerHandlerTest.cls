@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void testUpdateAcc1() {
         //we have to create data which executes any if condition
         //create accounts where active is yes.
             //trigger will run, and description will be updated automatically.
         List<account> listAcc = new list<account>();
         Account acc = new account();
         acc.Name = 'JN Test';
         acc.Industry = 'Energy';
         acc.Active__c = 'Yes';
         listAcc.add(acc);
         
         Account acc2 = new account();
         acc2.Name = 'UN Test';
         listAcc.add(acc2);
 
         Account acc3 = new account();
         acc3.Name = 'TN Test';
         acc3.Active__c = 'Yes';
         listAcc.add(acc3);
 
         insert listAcc;
             //Acc Trigger Called.
                 //AccountTriggerHandler.updatedescription method will be called.
 
         //assert if description is updated.
         list<account> getAccounts = [select id, name, active__c, description from account where active__c = 'Yes'];
         assert.areEqual(2, getAccounts.size());
         assert.isTrue(getAccounts[0].Description.contains('Enjoy'));
    }
 
     @isTest
    private static void testUpdateAcc2() {
         //we have to create data which executes any if condition
         //create accounts where active is yes.
             //trigger will run, and description will be updated automatically.
         List<account> listAcc = new list<account>();
         Account acc = new account();
         acc.Name = 'JN Test';
         acc.Industry = 'Energy';
         acc.Active__c = 'No';
         listAcc.add(acc);
         
         Account acc2 = new account();
         acc2.Name = 'UN Test';
         listAcc.add(acc2);
 
         Account acc3 = new account();
         acc3.Name = 'TN Test';
         acc3.Active__c = 'No';
         listAcc.add(acc3);
 
         insert listAcc;
             //Acc Trigger Called.
                 //AccountTriggerHandler.updatedescription method will be called.
 
         for (Account eachAc : listAcc) {
             eachAc.Active__c = 'Yes';
         }
         update listAcc;
 
         //assert if description is updated.
         list<account> getAccounts = [select id, name, active__c, description from account where active__c = 'Yes'];
         assert.areEqual(3, getAccounts.size());
         assert.isTrue(getAccounts[0].Description.contains('Enjoy'));
    }
    @isTest 
    private static void testVIP1() {
        List<Account> listAcc = new List<Account>{
            new Account(name='Rolex',Industry='Energy',Website='account.com'),
            new Account(name='Timex'),
            new Account(name='Omega')
        };
        insert listAcc;

        List<Contact> listContact = new List<Contact>();

        for (Integer i = 0; i < 300; i++) {
            Contact c= new Contact(lastname = 'Time '+1);
            if (i<100) {
                c.AccountId=listAcc[0].Id;
            }else if (i<200) {
                c.AccountId=listAcc[1].Id;
            }else {
                c.AccountId= listAcc[2].Id;
            }
            listContact.add(c);
        }
        insert listContact;

        Test.startTest();
        for (Account a : listAcc) {
            a.VIP__c=true;
        }
        update listAcc;
        Test.stopTest();

        List<Contact> allContacts = [SELECT id,vip__c FROM Contact];
        for (Contact eachcon : allContacts) {
            Assert.areEqual(true, eachcon.VIP__c);
        }
    }
}