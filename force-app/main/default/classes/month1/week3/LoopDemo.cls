public class LoopDemo {
    public void print_ink_while(){

        integer i=1;

        while( i<=25){
            system.debug(i);
            i++;
        }
        system.debug('after while i=> '+ i);
    }
    public void print_ink_while2(){

    }
    public void print5Multiple(integer n){
        integer i=1;
        while(i<=n){
            integer remainder = math.mod(i, 5);
            if(remainder==0){
                system.debug(i);
            }
            i++;
        }
    }
    public void print_Hello(){

        for (integer i=0; i<=10;i++){
            system.debug('Hello');
        }
    }
    public void print_N_numbers(integer n){
        string printStr='';
        for(integer i=0;i<n;i++){
            system.debug(i);
            printStr= printStr+i+',';
        }
        system.debug(printStr);
    }
    public void print_N_numbers2(integer n){
        string s= 'this';

        s+= ' is a string ';
        for (Integer i = 0; i < n; i++) {
            s+= i;

        
            system.debug(s);

        }
    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
        for (Integer i = startInt; i< endInt; i++) {
            integer modI = math.mod(i,2);
            if(modI==1)system.debug(i);
            
        }
    }
    public void forLoopExample(){
        integer no=5;
        integer fact=1;
        for (Integer i = 1; i <=no; i++) {
            fact *=i;
        }
        system.debug('Factorail of '+no+' is: '+fact);
    }
   
}