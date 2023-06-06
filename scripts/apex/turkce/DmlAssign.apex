//1
Account acc1 = new Account();
acc1.Phone= '1234567898';
acc1.Name='Assignment 1';
acc1.Site='456';
acc1.Website='www.softinnovas.com';
insert acc1;

Account acc2 =new Account();
acc2.Phone= '1234567898';
acc2.Name='Assignment 2';
acc2.Site='789';
acc2.Website='www.softinnovas.com';
insert acc2;

//2
Account acc3 = [select id,phone,name from account where name = 'Assignment 1' limit 1];
acc3.Phone= '45612332';
acc3.Name = 'updated Assignment 1';
update acc3;

Account acc4 = [select id,phone,name from account where name = 'Assignment 2' limit 1];
acc4.Phone= '7538694';
acc4.Name= 'Updated Assignment 2';
update acc4;

//3
Account acc5 = [select id,phone,name from account where name = 'updated Assignment 1' limit 1];
delete acc5;
Account acc6 = [select id,phone,name from account where name = 'Updated Assignment 2' limit 1];
delete acc6;

//4
List<Opportunity> listOpp = new List<Opportunity>();
for(integer i=1;i<=149;i++){
    Opportunity opps = new Opportunity();
    opps.Type= 'New Customer';
    opps.StageName= 'Qualification';
    opps.CloseDate = date.newInstance(2024,02,02);
    opps.Name = 'Homework';
    opps.Description='New Opportunities';
    listOpp.add(opps);
}
insert listOpp;
//5
delete listOpp;
//6
Account acc3 = [Select id from account where name='University of Arizona' limit 1];
Account acc4 = new Account();
acc4.Name = 'Summer Fest LLC';
acc4.ParentId=acc3.Id;
acc4.Type= 'Technology Partner';
acc4.Rating= 'Hot';
acc4.AnnualRevenue= 200000000;

insert acc4;
//7
Account accSummer = [SELECT id FROM Account WHERE name='Summer Fest LLC'];
List<Contact> conList= new List<Contact>();
for(integer i=1;i<=3;i++){
    Contact con =new Contact();
    con.AccountId=accSummer.Id;
    con.LastName='Event Planner' +i;
    con.Phone= '+1 2345 7896';
    con.LeadSource='Web';
    conList.add(con);
}
insert conList;
