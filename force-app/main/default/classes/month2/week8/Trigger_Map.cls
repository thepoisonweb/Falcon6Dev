public class Trigger_Map {
    public  Id InsertSF_Project() {
        Salesforce_Project__c sP1 =new Salesforce_Project__c();
        sP1.Project_Name__c='Project Test';
        insert sP1;
        return sP1.Id;
    }
    public void updateSF_Project(id Id,string name) {
        Salesforce_Project__c sP1 =[SELECT id,name FROM Salesforce_Project__c where Id=:Id];
        sP1.Project_Name__c=name;
        update sP1;
    }
}