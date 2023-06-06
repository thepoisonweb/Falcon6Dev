public  class Datetime_Assignment {
    public void dateMethods(){
        Date varDate = date.newInstance(2001,1,1);
        system.debug('Date is '+varDate);
    }
    public void timeMethods(){
        time varTime = time.newInstance(18, 21, 29, 00);
        system.debug('Time is '+ varTime);
    }
    public void dateTimeMethods(){
        datetime varDateTime = datetime.newInstanceGmt(2001,01,01,18,21,29);
        system.debug('Date/Time '+varDateTime);
    }
}