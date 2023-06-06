public class String_Assignment {
    public void stringAssignment(){
        string localString = '"Thanks for the session on the string"';
        system.debug(localString);

        integer sLength = localString.length();
        system.debug('Length of "Thanks for the session on the string" is  ' + sLength);

        String upperCase = localString.toUpperCase();
        system.debug('Uppercase String=> ' + upperCase);

        Boolean checkString = localString.contains('session');
        system.debug('Does ' + localString + ' contain "session" ?  '+ checkString);

        Boolean checkString2 = localString.contains('sessions');
        system.debug('Does ' + localString + ' contain "sessions" ?  ' + checkString2);

        Boolean checkString3 = localString.containsIgnoreCase('SESSION');
        system.debug('Does ' + localString + ' contain "SESSION" ?  ' + checkString3);



    }
}