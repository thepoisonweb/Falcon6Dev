/*Date myBirthday = Date.newInstance(1984, 10, 11);
system.debug('My Birthdate is '+myBirthday);
integer x = myBirthday.day();
integer y = myBirthday.month();
integer z= myBirthday.year();
integer sum = x+y+z;
system.debug( x +' + '+ y +' + '+ z +' = '+ sum ); */

Date mCBirthDate = date.newInstance(1867, 11, 7);
date tToday = date.today();
integer old = (tToday.year()-mCBirthDate.year());
system.debug(old);

boolean leap = date.isLeapYear(mCBirthDate.year());
system.debug(leap);

