@isTest
public class sf_assg_Test {
    @isTest
    public static void inserfTest() {
        
        sf_assg.insertsf();

        list<Salesforce_Project__c> insertedList = [SELECT project_Name__c  FROM Salesforce_Project__c WHERE Project_Name__c='Phone23'];

        Assert.areEqual(10, insertedList.size());
    }
    @isTest
    public static void updatesfTest() {
        sf_assg.updatesf();

        
    }
}