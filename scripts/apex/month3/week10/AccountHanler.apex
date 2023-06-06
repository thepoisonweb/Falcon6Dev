
Set<Id> accIds = new Set<Id>();

List<Account> listAcc = [SELECT id,(SELECT id FROM Contacts) FROM Account];

for (Account eachAcc : listAcc) {
    accIds.add(eachAcc.Id);
}
AccountHandler_assg.updateNumberOfContacts(accIds);