
//Null pointer exception
String s;
s.toUpperCase();

integer i;
system.debug(i+15);

//limit exception

for(Integer i=0;i<200;i++){
    Account a = new Account(name='acc');
    insert a;
}

//List exception

List<Integer> l1 = new List<Integer>{1,58,4};
system.debug('l1 5th element: '+l1[5]);

//Query exceptioin
Account a1 = [SELECT id,name from Account WHERE createddate = today];
system.debug(a1);

//dml exception
Account a3 = new Account();
insert a3;
system.debug('as: '+a3);