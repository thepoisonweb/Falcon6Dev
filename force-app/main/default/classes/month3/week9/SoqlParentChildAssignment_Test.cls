@isTest
public class SoqlParentChildAssignment_Test {
   @TestSetup
   static void makeData(){
    List<Account> listAcc = new List<Account>();
    for (Integer i = 0; i <10; i++) {
        Account acc = new Account(Name='test acc '+i);
        listAcc.add(acc);
    }
    insert listAcc;

    List<Contact> listCon = new List<Contact>();
    for (Integer i = 0; i < 15; i++) {
        Contact con =new Contact(LastName='test name'+i,AccountId=listAcc[0].Id);
        listCon.add(con);
    }
    insert listCon;
   }
   @isTest
   private static void testPrintContactAccounts() {
    SoqlParentChildAssignment.printContactAccounts();
   }
   @isTest 
   private static void testPrintAccountContacts() {
    SoqlParentChildAssignment.printAccountContacts();
   }
}