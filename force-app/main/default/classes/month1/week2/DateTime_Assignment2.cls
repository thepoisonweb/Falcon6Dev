public class DateTime_Assignment2 {
    public void diffofDate(){
        date varTomorrow = date.newInstance(2023 ,04,05);
        system.debug(varTomorrow);

        date varToday = date.newInstance(2023, 04, 04);

        Integer differ = varToday.daysBetween(varTomorrow);
        system.debug('differance: '+differ);
    }
    public void Timecheck(){
        datetime varTomorrow = Datetime.newInstancegmt(2023, 04, 05, 7, 0, 0);
        system.debug('Tomorrow: '+varTomorrow);
        Datetime var10DaysDatetime = Datetime.newInstancegmt(2023, 04, 15, 9, 0, 0);
        system.debug('10 Days Date time: '+var10DaysDatetime);
        long varLong = 1233987431L;
        datetime varDateTimeLong = Datetime.newInstance(varLong);
        system.debug('Date Time Long: '+var10DaysDatetime);
        Datetime sevenDays = varTomorrow.addDays(7);
        system.debug('seven Days added: '+sevenDays);
        datetime tenDays = var10DaysDatetime.addDays(10);
        system.debug('ten days after ten days: '+tenDays);


    }
}