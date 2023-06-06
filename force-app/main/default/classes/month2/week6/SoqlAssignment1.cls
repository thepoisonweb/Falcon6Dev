public class SoqlAssignment1 {
    public static void topEmployees() {
        List<Employee__c> ListEmp = [SELECT Id, Name, First_Name__c, Salary__c FROM Employee__c order by salary__c desc limit 5];

        for (Employee__c eachEmp : ListEmp) {
            System.debug(eachEmp.First_Name__c+' \'s salary is '+eachEmp.Salary__c);
        }
    }
    public static void mostPopularCountry() {
        List<AggregateResult> ListEmp2 = [SELECT Count(Id), Country__c FROM Employee__c GROUP BY Country__c ORDER BY Count(Id) desc LIMIT 1];
        
       for (AggregateResult eachAgg : ListEmp2) {
        System.debug('Most populated country: '+ eachAgg.get('country__c'));
       }
        
    }
}