public class SoqlDemo4 {
    public static void groupByQuery() {
        List<AggregateResult> result= [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];

        for (AggregateResult ar : result) {
            System.debug('country name is '+ar.get('country__c'));
            System.debug('number of employees are'+ ar.get('expr0'));
            system.debug('total salary is '+ar.get('expr1'));
        }
    }
    public static void accDynamicSOQL1(string accFieldNames) {
        string query = 'select ';
        query +=accFieldNames;
        query +=' from account';

        System.debug('final query is: '+query);

        List<Account> listAcc = Database.query(query);
        for (Account eachAcc : listAcc) {
            system.debug(eachAcc);
        }
    }
}