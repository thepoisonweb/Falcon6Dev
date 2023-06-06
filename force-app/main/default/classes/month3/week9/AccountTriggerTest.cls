@isTest
public class AccountTriggerTest {
   
        @IsTest
        static void testAccTrg1(){
             List<account> listAcc = new list<account>();
     
             Account acc = new account();
             acc.Name = 'JN Test';
             acc.Industry = 'Energy';
             listAcc.add(acc);
             
             Account acc2 = new account();
             acc2.Name = 'UN Test';
             listAcc.add(acc2);
     
             Account acc3 = new account();
             acc3.Name = 'TN Test';
             listAcc.add(acc3);
     
             insert listAcc;
             List<Account> list1 = [select id,name from Account];
             assert.areEqual(3, list1.size());

             acc2.Industry='Energy';
             update acc2;

             delete acc2;
             List<Account> list2 = [select id,name from Account];
             Assert.areEqual(2, list2.size());

             undelete acc2;

        }
}