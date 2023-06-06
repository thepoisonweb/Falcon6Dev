Candidates.companyName= 'Softinnovas';
system.debug('candidadate count-> '+ Candidates.count);

Candidates can1 = new Candidates();
can1.name= 'Jerry';
can1.gender='Male';
can1.details();

system.debug('candidadate count-> '+ Candidates.count);

Candidates can2= new Candidates();
can2.name = 'George';
can2.gender = 'Male';
can2.details();
system.debug('candidadate count-> '+ Candidates.count);


Candidates.companyName = 'Salesforce';
can1.details();
can2.details();

system.debug('candidadate count-> '+ Candidates.count);
