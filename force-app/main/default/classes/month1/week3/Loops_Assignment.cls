public class Loops_Assignment {
    public integer whileLoopMethod(integer n) {
        integer i=1;
        while (i<=n) {
            system.debug(i);     
            i++;               
        }
        return i; 
    }
    public void printEven(){
        string print= '';
        for (Integer i = 1; i <=100; i++) {
            integer remainder = Math.mod(i, 2);
            if (remainder==0){
                print +=i+',';
            }
        } system.debug(print.removeEnd(','));
    }
    public integer printPower(integer n){
        integer power=1;
        for (Integer i = 0; i < n; i++) {
            power *=n;
        }
        system.debug('Power of '+n+' is '+ power);
        return power;
    }
}