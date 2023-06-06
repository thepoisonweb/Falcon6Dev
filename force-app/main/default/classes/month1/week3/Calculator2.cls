public class Calculator2 {
    public static integer add(integer a,  integer b){
        return(a+b);
    }
    public static string add(list<string> strList){
        string lis='';

        for(string eachString : strList){
            lis+=eachString+' || ';
           
        }
        system.debug(lis);
        return lis;
    }
}