public class soru19 {
    public static void accountSoql() {
        List<Account> accList=[select id, name, annualRevenue from account where name like 'United%'];
        System.debug('Name i United sirali 6 karakteri ile başlayan tüm accountlar: ');
        System.debug(accList);

        List<Account> accList2 = [select id ,name, annualRevenue from account where name like 'United\%'];
        System.debug('Name i United% sirali 7 karakteri ile tam eşleşen tüm accountlar: ');
        System.debug(accList2);

        List<Account> accList3 = [select id,name,annualRevenue from account where name like 'United\%%'];
        System.debug('Name i United% sirali 7 karakteri başlayan tüm accountlar: ');
        System.debug(accList3);

        List<Account> accList4 = [select id,name,annualRevenue from account where annualRevenue!=null order by annualRevenue desc limit 3];
        System.debug('Annual Revenue field  en yüksek olan ilk 3 account:');
        System.debug(accList4);

        List<Account> accList5 = [select id,name, rating,phone from account order by createddate desc limit 1];
        System.debug('En son create edilen account un name,rating ve phone bilgileri:');
        System.debug(accList5);

        List<Contact> conList = [SELECT Id, Email, Name, Title,account.name FROM Contact where title like '%vp%'];
        System.debug('Title i VP yi içeren contact larin name,email ve account name bilgileri');
        System.debug(conList);

        List<Opportunity> oppList = [SELECT Id, StageName, Name, CloseDate, Account.name FROM Opportunity where StageName='Closed Won'];
        System.debug('Closed-Won olan tüm opportunity lerin name,amount ve close date bilgileri');
        System.debug(oppList);

        List<Opportunity> oppList2 = [SELECT Id, Name, Amount FROM Opportunity where amount>100.00];
        System.debug('Amount u 100,00 den büyük olan tüm opportunity ler');
        System.debug(oppList2);

        List<Opportunity> oppList3= [SELECT Id, Name, Account.rating,account.type, account.name FROM Opportunity where account.type= 'Customer - Direct'];
        System.debug('Account type i customer direct olan tüm opportuniy lerin name,account name,account rating bilgileri');
        System.debug(oppList3);

        List<Salesforce_Ticket__c> sfTicketList = [SELECT Id, Subject__c, Status__c, RecordTypeId, Salesforce_Project__r.status__c  FROM Salesforce_Ticket__c where Salesforce_Project__r.status__c = 'Completed'];
        System.debug('Salesforce Project status ü completed olan tüm salesforce ticket larin  subject,status ve record type bilgileri');
        System.debug(sfTicketList);








    }
}