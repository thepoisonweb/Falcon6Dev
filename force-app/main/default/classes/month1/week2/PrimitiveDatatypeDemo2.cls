public class PrimitiveDatatypeDemo2 {
   public void printNewDate(){
    system.debug('create new date variable');
    Date newDate1 = Date.newInstance(1984, 4, 3);
    system.debug(newDate1);

    Date newDate2 = Date.newInstance(2023, 4, 3);
    system.debug(newDate2);

    date todayDate = date.today();
    system.debug('today\'s date is ' + todayDate);


   }
   public void printNewTime(){
      Time mytime1 = time.newInstance(13, 16, 05, 15);
      system.debug(mytime1);
   }
   public void printNewDateTime1(){
      Datetime dt1 = Datetime.newInstance(2021,3,4,15,20,43);
      system.debug(dt1);

      Datetime dt6 = datetime.now();
      system.debug('dt6 is '+dt6);      
   }
   public void printNewDateTime2(){
      long longtime = 4646845464468L;
      Datetime dt7 = Datetime.newInstance(longtime);
      system.debug(dt7);
      datetime dt4 = datetime.newInstanceGmt(2021, 11, 100, 24, 15, 50);
    system.debug('dt 4 ' + dt4);

    Datetime tonow = datetime.now();
    system.debug(tonow);
     
   }

   
}