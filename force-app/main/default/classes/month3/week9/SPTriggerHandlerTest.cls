@isTest
public class SPTriggerHandlerTest {
    @isTest 
    private static void TestCreateDefaultTicket() {
        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
        for (Integer i = 0; i < 500; i++) {
            Salesforce_Project__c sp = new Salesforce_Project__c(Project_Name__c='TEST'+i,Status__c='New');
            listSP.add(sp);
        }
        insert listSP;

        List<Salesforce_Ticket__c> allTickets = [SELECT id,Subject__c FROM Salesforce_Ticket__c];
        Assert.areEqual(500, allTickets.size());
        Assert.isTrue(allTickets[0].Subject__c.contains('Default'));
    }
}