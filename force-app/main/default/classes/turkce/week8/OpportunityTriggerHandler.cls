public  class OpportunityTriggerHandler {
    public static void stageNameUpdate(List<Opportunity> tNew,List<Opportunity> tOld, Map<Id,Opportunity> tNewMap,Map<Id,Opportunity> tOldMap) {
        
        for (Opportunity opp : tNew) {
            if (opp.StageName!=tOldMap.get(opp.Id).StageName) {
                if(opp.StageName=='Closed Lost'){
                    opp.Description='Cok uzgunuz../';
                }
                if (opp.StageName=='Closed Won') {
                    opp.Description= 'Yasasin...';
                }
                if (opp.StageName=='Prospecting') {
                    opp.stageName.addError('Sureci basa donduremezsiniz...');
                }
            }
        }
    }
}