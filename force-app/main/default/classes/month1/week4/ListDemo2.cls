public class ListDemo2 {
    public static void iterateList(){

        List<integer> intList= new List<integer>{};
        intlist.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intlist.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        intlist.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);

        system.debug(intList);

        for (integer eachNumber : intList) {
            system.debug(eachNumber);
        }
    }
    public static integer add(list<integer> l1){
       integer sum= 0;
        system.debug(l1);

        for (integer eachNum : l1) {
            sum+= eachNum;
        }
        return sum;
    }
    public static void iterateListString(list<string> l2){

            system.debug(l2);
            for(string eachString:l2){
                system.debug(eachString+ ' - its length is '+eachString.length());
            }
    }
    public static string add(list<string> l2){
        string finalString ='';
        for (string eachString :l2){
            finalString+= eachString+'||';
        }
        system.debug(finalString);
        return finalString;
    }
    public static void iterateListString99(){
        list<string> ls = new list<string>{'list','set', 'map', 'array'};
        ls.add('methods');
        ls.add('constructor');

        list<string> newLs= new List<string>();

        for(string eachStr:ls){
            string temp= eachStr+'-'+ eachStr.length();
            newLs.add(eachStr);
            newLs.add(temp);
        }
            system.debug(newLs);
    }
}