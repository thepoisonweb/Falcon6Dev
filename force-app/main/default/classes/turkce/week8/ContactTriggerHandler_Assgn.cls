public class ContactTriggerHandler_Assgn {
    //1.1
    public static void UpdateLastName(List<Contact> cTriggerNew,List<Contact> cTriggerOld,Map<Id,Contact> cTriggerNewMap, Map<Id,Contact> cTriggerOldMap) {
        
        for (Contact eachNewcon : cTriggerNew) {
                if (eachNewcon.LastName!=cTriggerOldMap.get(eachNewcon.id).LastName) {
                    eachNewcon.Description='Last Name degistirildi- '+cTriggerOldMap.get(eachNewcon.Id).LastName+', '+eachNewcon.LastName+' olarak degistirildi.';
                }
        }
    }
}