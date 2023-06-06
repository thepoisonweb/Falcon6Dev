public class DML3_Assgn {
    public static void createBulkContacts() {
        List<Contact> ListCon = new List<Contact>();

        for (Integer i = 0; i < 4; i++) {
            Contact con1 = new Contact();
            
            con1.FirstName= 'Mark';
            con1.LastName = 'Ruffalo';
            listCon.add(con1);
        }
        for (Integer i = 0; i < 3; i++) {
           
            Contact con2 = new Contact();
            con2.FirstName= 'Chris';  
            con2.LastName= 'Hemsworth';
            listCon.add(con2);

            Contact con3 = new Contact();
            con3.FirstName= 'Scarlett';
            con3.LastName = 'Johansson';
            ListCon.add(con3);
        }
        insert ListCon;
    }
    public static integer updateBulkContacts(String lastName, String phoneNumber) {
        integer numberOfUpdatedContact= 0;
        List<Contact> ListCon = [SELECT Id, LastName, Phone FROM Contact WHERE LastName=:lastName];
        List<Contact> updatedListCon = new List<Contact>();

        for (Contact eachCon : ListCon) {
            eachCon.Phone= phoneNumber;
            updatedListCon.add(eachCon);
        }
        numberOfUpdatedContact=updatedListCon.size();
        update ListCon;
        return numberOfUpdatedContact;
    }
}