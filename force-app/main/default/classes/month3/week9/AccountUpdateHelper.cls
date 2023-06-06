public class AccountUpdateHelper {
    @InvocableMethod
   public static void updateAccountWebsite(List<Id> accIds) {
    List<Account> accountToUpdate = new List<Account>();
    List<Account> accList = [SELECT id,name, Website FROM Account WHERE Id in :accIds];
    for (Account  eachAcc : accList) {
        eachAcc.Website='www.softinnovasbatch15.com';
        accountToUpdate.add(eachAcc);
    }
    if (!accountToUpdate.isEmpty()) {
        update accountToUpdate;
    }
   }
}