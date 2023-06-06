DateTimeMethodsDemo dtm = new DateTimeMethodsDemo();
date newDate = date.newInstance(1984, 10, 11);
Boolean leapCheck = dtm.leapYearCheck(newDate);
system.debug(leapCheck);
