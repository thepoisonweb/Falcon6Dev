public class AccConAndOppOperations {
    
    //2.1
    public static void accList() {
        List<Account> accList = [SELECT Id, Name, AnnualRevenue, Type, AccountSource FROM Account];
        for (Account eachAcc : accList) {
            System.debug('Account name: '+eachAcc.Name+' ,Annual Revenue: '+eachAcc.AnnualRevenue+' , Type: '+eachAcc.Type+', Source of Account: '+eachAcc.AccountSource);
            }
    }
    //2.2
    public static void oppList(string leadSource, string Stage){
        List<Opportunity> oppList = [SELECT Id, LeadSource, StageName FROM Opportunity WHERE leadSource= :leadSource and StageName= :Stage];
        System.debug(oppList);
    }
    //2.3
    public static void accList2(){
        List<Account> listAcc = [select id, name, annualRevenue, type, (select name, amount, StageName from Opportunities WHERE stageName='Closed Won' ) from account where type = 'Customer - Direct' ];
        for (account eachAcc : listAcc) {
            system.debug('name of account: ' +eachAcc.Name+ ', annualRevenue: ' + eachAcc.AnnualRevenue+ ' and type is ' + eachAcc.Type);
            system.debug('=========================');
            for (Opportunity eachOpp : eachAcc.Opportunities) {
                system.debug('each opp is ' + eachOpp);
                system.debug('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
            }
        }
    }
    //2.4
    public static void createAccount(string name, decimal annualrevenue, string type ){
        account acc =  new Account();
        if (name!= null){
            acc.Name=name;
            acc.AnnualRevenue= annualrevenue;
            acc.Type= type;
            insert acc;
            system.debug(acc);
        } else {
            system.debug('Account without name cannot be created');
        }
    }
    //3.1
    public static void sumOpp(){
        AggregateResult sumOpp = [SELECT SUM(amount) from Opportunity WHERE stageName ='Closed Won' and Amount!= NULL];
        system.debug(sumOpp);
        decimal sAmount = (decimal)sumOpp.get('expr0');
        system.debug('the sum of all the closed won opportunities Amount: '+sAmount);
    }
    //3.2
    public static void allAccount(string SName){
        list<account> la = [select id, name, (select id,name from Opportunities where stageName = :SName AND stageName='Closed Won')from Account];
        System.debug(la);
    }
    //3.3
    public static void oneContact(){
        List<Account> listAcc = [select id,name FROM Account WHERE Id IN (SELECT AccountId FROM Contact) ];
        for (account eachaccount: listAcc){
            system.debug(eachaccount.name + eachaccount.id);
        }
    }
    //3.4
    public static void runDynamicContactQuery(List<String> fieldsName) {
        String query='SELECT ';
        for (String eachField : FieldsName) {
            query+=eachField+', ';
        }
        query=query.removeEnd(', ');
        query+=' FROM Contact';

        System.debug('final query is: '+query);

        List<Contact> ListCon =Database.query(query);

        for (Contact eachCon : ListCon) {
            System.debug(eachCon);
        }
    }
    //3.5
    public static void createNewContact(Id accountId) {
        
        List<Account> acc = [SELECT Name FROM Account WHERE id=:accountId LIMIT 1 ];

        Contact con = new Contact();
        for (Account eachAcc : acc) {
            con.AccountId = accountId;
            con.LastName=eachAcc.Name;
        }
        insert con;
    }
    //3.6
    public static void updateOpp() {
        List<Opportunity> ListOpp = [SELECT Amount, Id, Description FROM Opportunity WHERE amount!=null ORDER BY Amount DESC LIMIT 10];

        for (Opportunity eachOpp : ListOpp) {
            eachOpp.Description = 'This is one of the top 10 opportunities. Please work on this properly';
        }
        update ListOpp;
    }


}