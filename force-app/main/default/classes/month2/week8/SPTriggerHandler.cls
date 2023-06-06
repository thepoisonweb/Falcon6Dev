public class SPTriggerHandler {
    public static void createDefaultTicket(list<Salesforce_project__c> spTriggerNew) {
        List<Salesforce_Ticket__c> ListST= new List<Salesforce_Ticket__c>();

        for (Salesforce_Project__c newSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c() ;
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c=newSP.Id;
            ListST.add(st);
        }
        if (!ListST.isEmpty()) {
            insert ListST;
        }
    }
    public static void validate1(List<Salesforce_Project__c> spTriggerNew,List<Salesforce_Project__c> spTriggerOld,Map<Id,Salesforce_Project__c> spTriggerNewMap, Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        
        Set<Id> setSPid= new Set<Id>();
        for (Salesforce_Project__c newSP : spTriggerNew) {
            if (newSP.Status__c!=spTriggerOldMap.get(newSP.Id).Status__c &&newSP.Status__c=='Completed') {
                setSPid.add(newSP.Id);
            }
        }
        List<Salesforce_Ticket__c> listST = [SELECT id,status__c, Salesforce_Project__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c in :setSPid and status__c!='Completed'];

        for (Salesforce_Ticket__c eachST : listST) {
            salesforce_project__c sp= spTriggerNewMap.get(eachST.Salesforce_Project__c);
            sp.addError('Cannot complete project because all its tickets are NOT completed.Try again later.');
        }
    }

    @future
    public static void updateDescriptionFuture(set<id> spIds) {
        List<Salesforce_Project__c> listSP = [SELECT id,name,Description__c FROM Salesforce_Project__c WHERE id in: spIds];

        for (Salesforce_Project__c eachSP : listSP) {
            eachSP.Description__c='Updated from future. OK?';
        }
        update listSP;
    }
    public static void spStatusCompleted(List<Salesforce_project__c> spTriggerNew, List<Salesforce_project__C> spTriggerOld,Map<Id,Salesforce_Project__c> spTriggerNewMap, Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        
        Set<Id> spIds = new Set<Id>();

        for (Salesforce_Project__c sp : spTriggerNew) {
            if (sp.Status__c=='Completed' &&sp.Status__c!=spTriggerOldMap.get(sp.Id).Status__c) {
                spIds.add(sp.Id);
            }
        }
        if (!spIds.isEmpty()) {
            completeTickets(spIds);
        }
    }
    @future
    private static void completeTickets(set<Id> spIds) {
        
        List<Salesforce_Ticket__c> aList= [SELECT id,Status__c,Salesforce_Project__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c in: spIds and status__c!='Completed'];

        for (Salesforce_Ticket__c st : aList) {
            st.Status__c='Completed';
        }
        update aList;
    }
}