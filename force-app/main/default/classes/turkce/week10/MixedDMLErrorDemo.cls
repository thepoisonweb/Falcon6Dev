public class MixedDMLErrorDemo {

    public static void myMethod() {
        Account a= new Account(Name='ApexHours');
        insert a;
        createUser();
    }
    @future 
    public static void createUSer() {
        Profile p = [SELECT id FROM Profile WHERE Name='Standard User'];
        UserRole r=[SELECT id FROM UserRole WHERE Name='CEO'];
        User usr = new User (Alias='apexs',Email='apexs@gma.com',
        emailencodingkey='UTF-8', lastname='Hours', 
        languagelocalekey='en_US', 
        localesidkey='en_US',
         profileid = p.Id,
          userroleid = r.Id,
        timezonesidkey='America/Los_Angeles', 
        username='aapexhours@apexhours.com');
    insert usr;
    }
}