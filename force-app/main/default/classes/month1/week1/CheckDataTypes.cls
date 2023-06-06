public class CheckDataTypes {
    public void  methodBoolean(){
        Boolean checkBoolean=true;

        system.debug(checkBoolean);

    }
    public void methodInteger(){
        //If you want to print as '1.'
        String varFirst= '1.';
        String varSecond= '2.';
        //If you want to print as an integer.
        Integer varFirst1 =1;
        Integer varSecond2= 2;

        system.debug(varFirst);
        system.debug(varSecond);
        system.debug(varFirst1);
        system.debug(varSecond2);
    }
    public void stringMethod(){
        string varName= 'Name';
        string var2Name= 'Betul';

        system.debug(varName);
        system.debug(var2Name);
    }
    public void methodId(){
        Id chechId= '0018Y00002xMUw4QAG';
        system.debug(chechId);
    }
    public void methodDouble(){
        Decimal varfirst2= 1.23;
        Double varsecond3=209.764;
        system.debug(varfirst2);
        system.debug(varsecond3);
    }
}