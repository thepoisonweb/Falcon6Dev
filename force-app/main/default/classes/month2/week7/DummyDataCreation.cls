public class DummyDataCreation {
    //1.1
    public static void topTenOpp() {
        List<Opportunity> ListOpp =[SELECT Id, Description, Amount FROM Opportunity where amount!=null ORDER BY Amount desc limit 10];

        for (Opportunity eachOpp : ListOpp) {
            eachOpp.Description='This is one of the top 10 opportunities. Please work on this properly';
        }
        update ListOpp;
    }
    //1.2
    public static void numOfOpp(id AccId, integer n) {
        Account acc2= [SELECT id, Name,AnnualRevenue FROM Account where annualRevenue!=null and id=:AccId];
        List<Opportunity> ListOpp = new List<Opportunity>();
        if (n>0) {
            for (Integer i = 1; i <=n; i++) {
                    Opportunity opp = new Opportunity();
                    opp.CloseDate=date.today().addYears(3);
                    opp.StageName='Prospecting';
                    opp.Amount=acc2.AnnualRevenue/n;
                    opp.Name=acc2.Name;
                    opp.AccountId=AccId;
                    ListOpp.add(opp);
            }
            System.debug(ListOpp);
        insert ListOpp;
        }else {
            System.debug('Please tell us how many opportunities needs to be created');
        }
    }
    //1.3
    public static void accountWithoutContact() {
        List<Account> Listacc= [Select id,name from account where id not in (select accountid from contact )limit 10];
        List<Contact> listCon = new List<Contact>();
        for (Account eachAcc : Listacc) {
            Contact con = new Contact();
            con.LastName=eachAcc.Name;
            con.AccountId=eachAcc.id;
            listCon.add(con);
        }
        insert listCon;
    }
    //1.4
    public static void deleteOpp() {
        List<Opportunity> listOpp = [SELECT name, id, StageName, amount FROM Opportunity where amount <20000 and stageName ='closed Lost'];

        delete listOpp;
    }
    //1.5
    public static void createNAccount(integer n) {
        List<Account> accList = new List<Account>();
        for (Integer i = 1; i <=n; i++) {
            Account acc = new Account();
            acc.Name = 'Assignment '+i;
            acc.Rating= 'Hot';
            acc.Phone= '1234567898';
            acc.ShippingStreet = 'Bentley Road';
            acc.ShippingCity= 'Cumming';
            acc.BillingStreet = 'Bentley road';
            acc.BillingCity= 'Cumming';
            accList.add(acc);
        }
        insert accList;
    }
    //1.6
    public static void createNContact(integer n, List<Account> listAcc) {
        
        List<Contact> listCon = new List<Contact>();
        for (Account eachAcc : listAcc) {
            for (Integer i = 1; i <=n; i++) {
                Contact con = new Contact();
                con.FirstName= 'Bety';
                con.LastName='Cloude';
                con.AccountId=eachAcc.Id;
                con.Phone='12345678998';
                con.MailingStreet='Bentley road';
                con.MailingCity= 'Cumming';
                con.OtherCity='Alpharetta';
                con.OtherStreet='Deerfield';
                listCon.add(con);
            }
        }
        insert listCon;
    }
    //1.7
    public static void createCase(List<Contact> listCon) {
        List<Case> listCase= new List<Case>();
        for (Contact eachCon : listCon) {
            Case cas = new Case();
            cas.ContactId=eachCon.Id;
            cas.AccountId=eachCon.AccountId;
            cas.Subject='Subject';
            cas.Status='Working';
            cas.Origin='Phone';
            listCase.add(cas);
        }
        insert listCase;
    }
}
