public class SoqlDemo2 {
    public static void accountContactSOQL() {
        List<Contact> listCon = [select id, name,account.name, account.industry,Account.AnnualRevenue, accountid FROM Contact ];
        
        decimal totalRevenue=0;
        for (Contact eachCon : listCon) {
            
            system.debug('contact name is '+ eachCon.Name);
            string accName= eachCon.Account.Name;
            decimal accAmount = eachCon.Account.AnnualRevenue;
            system.debug('account name is '+accName+ 'acc industry is '+eachCon.Account.Industry);

            decimal accRevenue = eachCon.Account.AnnualRevenue;
            if (accRevenue !=null) {
                totalRevenue +=accRevenue;
            }
            system.debug('account revenue is'+accRevenue);
            System.debug('--------');
        }
        System.debug('total acc revenue'+totalRevenue);
       
    }
    public static void childToParent2() {
        List<Salesforce_Ticket__c> ListST = [select id, name, subject__c, status__c, salesforce_project__c, salesforce_project__r.status__c, salesforce_project__r.project_name__c FROM Salesforce_Ticket__c];
        system.debug('st size: '+ListST.size());
        
        for (Salesforce_Ticket__c eachST : ListST) {
            if (eachST.Salesforce_Project__r.Status__c=='New') {
                system.debug('ticket name is '+eachST.Subject__c+', its project name is '+eachST.Salesforce_Project__r.Project_Name__c);
            }
        }
    }
}