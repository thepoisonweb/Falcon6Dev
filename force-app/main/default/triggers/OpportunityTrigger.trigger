trigger OpportunityTrigger on Opportunity (before insert,after insert,before update, after update) {

    if (Trigger.isBefore&&Trigger.isUpdate) {
        OpportunityTriggerHandler.stageNameUpdate(trigger.new,trigger.old,trigger.newMap,trigger.oldMap);
    }
}