public class ContactTriggerHandler {
    public static void printLastName(List<Contact> cTriggerNew, Map<Id,Contact> cTriggerOldMap) {
        for (Contact con : cTriggerNew) {
            System.debug('Yeni Last Name: '+con.LastName+' - '+'Eski Last Name: '+cTriggerOldMap.get(con.Id).LastName);
        }
    }
}