//2.1
AccConAndOppOperations.accList();
//2.2
AccConAndOppOperations.oppList('Web', 'Closed Lost');
AccConAndOppOperations.oppList('Web', 'Closed Won');
AccConAndOppOperations.oppList('Phone Inquiry', 'Closed Won');
//2.3
AccConAndOppOperations.accList2();
//2.4
AccConAndOppOperations.createAccount('Happy Corp', 900000, 'other');
AccConAndOppOperations.createAccount(null, 900000, 'Customer - Direct');
//
//3.1
AccConAndOppOperations.sumOpp();
//3.2
AccConAndOppOperations.allAccount('Closed Won');
AccConAndOppOperations.allAccount('New');
//3.3
AccConAndOppOperations.oneContact();
//3.4
List<String> fieldsName = new List<String>{'Id','Name','email'};
AccConAndOppOperations.runDynamicContactQuery(fieldsName);
//3.5
AccConAndOppOperations.createNewContact('0018Y00002xbMlpQAE');
//3.6
AccConAndOppOperations.updateOpp();
