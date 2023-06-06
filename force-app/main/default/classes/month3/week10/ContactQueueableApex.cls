public class ContactQueueableApex implements Queueable {

    public List<Account> accList;
    
    public ContactQueueableApex(List<Account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext context){
        List<Contact> conList = new List<Contact>();

        for (Account acc : accList) {
            Contact con = new Contact();
            con.LastName= 'queue';
            con.AccountId= acc.Id;
            conList.add(con);
        }
        insert conList;
    }
}