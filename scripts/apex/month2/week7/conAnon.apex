List<Contact> listCon = new List<Contact>();

Contact c= new Contact();
c.LastName = 'con trigger 4';
listCon.add(c);
Contact c1 = new Contact();
c1.LastName = 'con trigger 5';
listCon.add(c1);

insert listCon;

List<Account> listAcc= new List<Account>();
For(Integer i=0;i<5;i++){
    account ac = new Account();
    ac.Name= 'test acc trigger'+i;
    listAcc.add(ac);
}
insert listAcc;