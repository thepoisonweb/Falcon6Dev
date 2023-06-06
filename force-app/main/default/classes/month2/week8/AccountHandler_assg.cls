public class AccountHandler_assg {
    public static void createcontact(List<account> accTriggerNew,List<Account> accTriggerOld, Map<Id,Account> accTriggerNewMap, Map<Id,Account> accTriggerOldMap) {
        
        List<Contact> conList = new List<Contact>();

        for (account eachNewAcc : accTriggerNew) {
            Contact newContact = new Contact();
            newContact.LastName=eachNewAcc.Name;
            newContact.AccountId= eachNewAcc.Id;
            conList.add(newContact);
        }

        if(!conList.isEmpty()){
            insert conList;
            
        }
    }
    //2
    public static void updateDescription(List<Account> aTriggerNew,List<Account> aTriggerOld, Map<Id,Account> aTriggerNewMap, Map<Id,Account> aTriggerOldMap) {
        for (Account eachNewAcc : aTriggerNew) {
            if (eachNewAcc.AnnualRevenue!=aTriggerOldMap.get(eachNewAcc.Id).AnnualRevenue&&aTriggerOldMap.get(eachNewAcc.Id).AnnualRevenue!=null) {
                if (eachNewAcc.AnnualRevenue>aTriggerOldMap.get(eachNewAcc.Id).AnnualRevenue) {
                    eachNewAcc.Description='Annual Revenue '+(eachNewAcc.AnnualRevenue-aTriggerOldMap.get(eachNewAcc.Id).AnnualRevenue)+' kadar artti.';
                }else {
                    eachNewAcc.Description='Annual Revenue '+(aTriggerOldMap.get(eachNewAcc.Id).AnnualRevenue-eachNewAcc.AnnualRevenue)+' kadar azaldi.';
                }
            }
        }
    }
    //3
    public static void uniqueAccountName(List<Account> aTriggerNew,List<Account> aTriggerOld, Map<Id,Account> aTriggerNewMap, Map<Id,Account> aTriggerOldMap) {
        List<Account> accList =[SELECT id,name FROM Account];
        for (Account eachAcc : accList) {
            for (Account eachNewAcc : aTriggerNew) {
                if (eachAcc.Name==eachNewAcc.Name) {
                    eachNewAcc.Name.addError('cannot create Account with same name');
                }
            }
        }
    }
    //4
    public static void insertOppAndCon(List<Account> aTriggerNew,List<Account> aTriggerOld, Map<Id,Account> aTriggerNewMap, Map<Id,Account> aTriggerOldMap) {
        
        List<Contact> newConList = new List<Contact>();
        List<Opportunity> newOppList = new List<Opportunity>();
        for (Account eachNewAcc : aTriggerNew) {
            Contact nCon = new Contact();
            ncon.LastName= eachNewAcc.Name;
            ncon.accountid= eachNewAcc.Id;
            newConList.add(nCon);

            Opportunity nOpp = new Opportunity();
            nOpp.Name=eachNewAcc.Name;
            nOpp.AccountId=eachNewAcc.Id;
            nOpp.CloseDate = date.today().addDays(20);
            nOpp.StageName= 'Qualification';
            newOppList.add(nOpp);
        }
        if (!newConList.isEmpty()) {
            insert newConList;
        }
        if (!newOppList.isEmpty()) {
            insert newOppList;
        }
    }
    @future
    public static void updateNumberOfContacts(set<Id> accIds){

        List<Account> listAcc = [SELECT id,Number_of_Contacts__c,(SELECT id FROM Contacts) FROM Account WHERE Id in: accIds];

        for (Account eachAcc : listAcc) {
            eachAcc.Number_of_Contacts__c=eachAcc.Contacts.size();
        }
        update listAcc;
    }
}