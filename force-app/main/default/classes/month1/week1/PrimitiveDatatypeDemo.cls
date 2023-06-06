public class PrimitiveDatatypeDemo {
    public void print1(){
        string batchName= 'Batch 15';
        integer totalCandidates = 54;
        Boolean isAdminCompleted =true;
        String batchDescription = batchName+' has '+totalCandidates+ ' candidates,and is the best';
        system.debug(batchDescription);

    }
    public void print2(){
        Decimal d1= 788.6564;
        system.debug('d1 is'+d1);

        Long l1 = 7897654456465465434L ;
        system.debug(l1);

        Double dd1= 48646845454.654;
        system.debug('dd1 '+dd1 );

        id accId= '0018Y00002xMUw4QAG';
        system.debug('acc id is '+ accId);

        Object obj1 = 99;
        Object obj2= true;
        system.debug(obj1);
        system.debug(obj2);
    }
   
}