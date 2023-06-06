public class ExceptionDemo {
    public static void demo1(String str) {
       
       try{
        String str2 = str.toUpperCase();
        system.debug('str2 is '+str2);
       } catch(NullPointerException nullEx){
        system.debug('str is null so we cannot convert to uppercase');
        system.debug('k');
       }
        system.debug('code completed');
    }
}