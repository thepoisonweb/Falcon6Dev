public  class SoqlDemo {
    public static void accountSOQL1(){
        list<account> listAcc=[select id,name, phone, website from Account];
        system.debug(listAcc);
        list<contact> listCon= [select id,name, phone from contact];
        system.debug(listCon);
    }
    public static void accountSOQLOneR() {
        Account acc = [select id,name,phone,website from Account ORDER BY CreatedDate DESC limit 1];
        system.debug(acc);
        string accName = acc.Name;
        system.debug('name of acc is '+accName);
        system.debug('website of acc is '+acc.Website);
    }
    public static void accountSOQL3() {
        list<account> listAcc = [select id, name, phone, accountnumber from Account ORDER BY CreatedDate DESC];
        for (Account eachAcc : listAcc) {
            system.debug('each account record is '+eachAcc);

            string eachaccName = eachAcc.Name;
            system.debug('account name is '+eachaccName);
            system.debug('account phone is '+eachAcc.Phone);
            system.debug('account number is '+eachAcc.AccountNumber);
            system.debug('------');
        }
    }
    public static void accountSoqlFilter() {
        List<Account> listAcc1 = [select id, name, website from Account WHERE Name= 'Lux'];
        system.debug(listAcc1);
    }
    public static void projectSoqlFilter() {
        list<salesforce_project__c> listSP = [select id, name,project_name__c, status__c, description__c FROM salesforce_project__c WHERE status__c = 'New'];
        system.debug(listSP);
        system.debug('number of records: '+listSP.size());
    }
    public static void projectSoqlFilter(string status) {
        List<salesforce_project__c> listSP = [select id,name,project_name__c,status__c, description__c FROM Salesforce_Project__c WHERE Status__c=:status];
        system.debug(listSP);
        system.debug('Number of records: '+listSP.size());
    }
}
    