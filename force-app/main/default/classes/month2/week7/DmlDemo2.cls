public  class DmlDemo2 {
   public static void insertRelatedRec2() {
    
    Department__c d = [SELECT id FROM Department__c ORDER BY CreatedDate DESC LIMIT 1];


    Employee__c e = new Employee__c();
    e.First_Name__c= 'Don';
    e.Last_Name__c = 'Eladio';
    e.Salary__c = 50000;
    e.Department__c= d.Id;
    e.Country__c= 'Mexico';
    
    insert e;
    System.debug('emp '+e);
   }
   public static void bulkInsertRight() {
    List<account> listAcc = new list<account>();
    for (Integer i = 0; i < 155; i++) {
        account ac = new account();
        ac.Name = 'test acc ' + i;
       
        listAcc.add(ac);
    }
    if (!listAcc.isEmpty()) {
        insert listAcc;
    }
   }
   public static void bulkUpdateRight() {
    List<Account> listAcc= [SELECT id, name FROM Account WHERE CreatedDate = TODAY];
    for (Account eachAcc : listAcc) {
        eachAcc.name = eachAcc.Name+ ' v2';
    }
    update listAcc;
   }
   public static void accountUpdate() {
    
    list<Account> allAccounts = [SELECT id,name,description,active__c FROM Account];

    List<Account> updateAccList= new List<Account>();

    for (Account eachAcc : allAccounts) {
        if (eachAcc.Active__c=='No'||String.isBlank(eachAcc.Active__c)) {
            eachAcc.Description= 'inactive';
            updateAccList.add(eachAcc);
        }
    }
    update updateAccList;
   }
}