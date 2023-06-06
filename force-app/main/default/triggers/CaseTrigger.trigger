trigger CaseTrigger on Case (before insert) {
    system.debug('before insert case trigger');
  
    CaseTriggerHandler.recordCount+=trigger.size;
    system.debug('number of record processed '+CaseTriggerHandler.recordCount);
}