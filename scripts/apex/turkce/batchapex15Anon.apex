List<Account> acList = [SELECT id,name FROM Account];
for (Account acc : acList) {
    if (acc.name.contains('update')) {
        acc.name=acc.name.remove('update');
    }
}
update acList;

BatchApex15 b15 = new BatchApex15();
Database.executeBatch(b15, 5);

