trigger ContactTrigger on Contact (before insert,after insert, before update,after update,before delete,after delete,after undelete) {

    // if (trigger.isInsert) {
    //     ContactTriggerHandler.insertMetot(trigger.new);
    //   }
    //   // 2. asama update
    //   if (trigger.isUpdate) {
    //     ContactTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
    //   }
    //   // 3. asama delete
    //   if (trigger.isDelete) {
    //     ContactTriggerHandler.deleteMetot(trigger.old);
    //   }
    
    
    // if (trigger.isBefore&&trigger.isUpdate) {
    //     ContactTriggerHandler.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.validateContactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    
    
    
    
    // if (trigger.isBefore) {
    //     System.debug('before trigger called');
    //     if (trigger.isInsert) {
    //         System.debug('before insert trigger called');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('before update triggert called');
    //     }
    // }
    // if (Trigger.isAfter) {
    //     system.debug('after trigger called.');
    //      if (Trigger.isInsert) {
    //         system.debug('after insert trigger called');
    //     } 
    //     if (Trigger.isUpdate) {
    //         system.debug('after update trigger called');
    //     }
    // }


   
}