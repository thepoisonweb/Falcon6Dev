public class SOQL_Assignment {
   public static void soql_WhereClause() {
    List<Contact> lstcontact = [Select id FROM Contact WHERE name LIKE 'A%'];
    System.debug('Number of Contact Name with Start A: '+lstcontact.size());
    System.debug('-----------');
    }
    public static void soql_FromMethod() {
        List<Contact> lstContact = [Select id, Lastname, Phone FROM Contact ];
        for (Contact eachCon : lstContact) {
            System.debug(eachCon);
        }
    }
    public static void soqlForContact() {
        List<Contact> lstContact = [select id,LastName, Account.id,Account.Name FROM Contact LIMIT 5];
        for (Contact eachaccount : lstContact) {
            System.debug('Account id: '+eachaccount.AccountId+' Account Name: '+eachaccount.Account.Name);
        }
    }
    public static void soqlForAccount() {
        List<Account> lstAccount = [select id,Name, (select id,Name from Contacts) FROM Account LIMIT 5];
        for (Account eachAccount : lstAccount) {
            for (Contact eachContact : eachAccount.Contacts) {
                System.debug('Contact id: '+eachContact.Id+' Contact Name: '+eachContact.Name);
            }
        }
    }
    public static void contactOfCompany() {
        List<Account> listAccount = [select Name, (select id FROM Contacts) FROM Account];
        Integer totalContacts=0;
        for (Account eachAcc : listAccount) {
            if (eachAcc.Contacts.size()!=0 && (eachAcc.Name.contains('Tesla')||eachAcc.Name.contains('Apple')||eachAcc.Name.contains('Meta')||eachAcc.Name.contains('Microsoft'))) {
                for (Contact eacCon : eachAcc.Contacts) {
                    totalContacts=eachAcc.Contacts.size();
                }
                System.debug(eachAcc+' Company have '+totalContacts+' contacts.');
            }
        }
    }
}