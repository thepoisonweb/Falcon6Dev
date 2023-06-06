//1.1
DummyDataCreation.topTenOpp();
//1.2
Account acc1 = [SELECT id from Account where name='GenePoint' limit 1];
DummyDataCreation.numOfOpp(acc1.Id, 3);
//1.3
DummyDataCreation.accountWithoutContact();
//1.4
DummyDataCreation.deleteOpp();
//1.5
DummyDataCreation.createNAccount(3);
//1.6
List<Account> listAcc= [Select id from Account where createddate=today limit 3];
DummyDataCreation.createNContact(3, listAcc);
//1.7
List<Contact> listCon = [Select id,AccountId from Contact];
DummyDataCreation.createCase(listCon);
