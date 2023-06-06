public class DML2_Assign {
    public static void insert_dml() {

        List<Account> listAcc = new List<Account>();
        for (Integer i = 1; i <=3; i++) {
            Account acc1 = new Account();
            acc1.Name= 'Betul Assignment';
            
            ListAcc.add(acc1);
        }
        insert ListAcc;
        
    }
    public static void updating_dml() {
        Account acc1 = new Account();
        acc1.Name = 'Account Created';
        insert acc1;

        List<Account> listAcc = [SELECT id, Name FROM Account WHERE Name='Account Created'];
        List<Account> updatedListAcc =new List<Account>();

        for (Account eachAcc : listAcc) {
            eachAcc.Name='Account Updated';
            updatedListAcc.add(eachAcc);
        }
        update updatedListAcc;
    }
}