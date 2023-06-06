List<Case> listCase = new List<Case>();

for (Integer i = 0; i < 205; i++) {
    Case c = new Case(subject='there is a bug',Description='resolve it man',Status='New', Origin='Web');
    listCase.add(c);
    
}
insert listCase;