public class StringMethodsDemo {
    public void stringMethod1(){

        system.debug('practise string methods');
        string sDesc = 'learning string methods in apex language.';
        integer strLength = sDesc.length();
        system.debug('Length of string is ' + strLength);

        string upSDesc = sDesc.toUpperCase();
        system.debug('uppercase string=> ' +upSDesc);

        Boolean checkApex = sDesc.contains('apex');
        system.debug('chech if string contains apex=> '+ checkApex);

        Boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug('check if string contains salesforce=> '+ checkSalesforce);

        boolean checkApex2 = sDesc.contains('Apex');
        System.debug('Apex contains in string=> '+checkApex2);

        Boolean checkApex3 = sDesc.containsIgnoreCase('Apex');
        system.debug('Apex contains ingnore case in string=>' +checkApex3);
     }
    public void StringMethod2(){
        string username = ' Betul  C    ';
        system.debug(username.length());
        username = username.trim();
        system.debug('after trim '+ username);
        system.debug(username.length());

        string username2 = 'Betul';
        Boolean checkNames = username.equals(username2);
        system.debug('check if username is same as username2=> ' +checkNames);

        Boolean checkNames2 = username.equals('Betul C');
        system.debug('check username =>'+ checkNames2);

        Boolean checkNames3 = username.endsWithIgnoreCase('Betul c');
        system.debug( 'check username => '+ checkNames3);
    }
}