public class DateTimeMethodDemo {
    public void calculateAgeInMonths(){
        date todayDate = date.today();
        date myBirthDate = date.newInstance(1984, 10, 12);

        integer myAge = myBirthDate.monthsBetween(todayDate);
        system.debug('My age in months is '+myAge);

        integer myAgeInDays = myBirthDate.daysBetween(todayDate);
        system.debug('My age in days is '+ myAgeInDays);
    }

    public void printSubscriptionEndDate(){
        date todayDate = date.today();
        date subsciprtionEndDate = todayDate.addDays(1000);
        system.debug('Subscription end date: ' +subsciprtionEndDate);

        date newStartDate = todayDate.addDays(-1000);
        system.debug('new start day: '+ newStartDate);

        integer newSDYear = newStartDate.year();
        system.debug (newSDYear);

        integer newSDMonth = newStartDate.month();
        system.debug (newSDMonth);
    }
    public void offerEndDateTime(){
        Datetime offerStart = Datetime.now();
        Datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetim '+offerEnd);
    }

}