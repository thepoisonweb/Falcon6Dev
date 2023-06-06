public  class ListDemo {
    public static void candidatesList(){
        List<string> ListC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        ListC.add('Bill');
        ListC.add('Kunal');
        ListC.add('Marc');
        system.debug('List of Candidates==> '+ListC);
    }
    public static void randomIntegerList(){
        List<integer> intList = new List<integer>();

        intlist.add(90);
        intList.add(15);
        intList.add(77);
        intList.add(21);
        intList.add(15);
        intList.add(15);
        system.debug('int list==> '+intList);
        integer size = intList.size();
        system.debug('size of List is '+ size);
        integer index3Value = intList.get(3);
        system.debug('index3 ==> '+index3Value);
        integer index3 = intlist[3];
        system.debug('index3==> '+index3);
    }
    public static string  candidatesList(integer i){
        string returnValue= '';
        List<string> ListC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        ListC.add('Bill');
        ListC.add('Kunal');
        ListC.add('Marc');
        system.debug('List of Candidates==> '+ListC);

        integer size = ListC.size();
        if (i<size && size>=0) {
            returnValue= ListC.get(i);
        }else {
            returnValue= 'No value';
        }
        
            return returnValue;               
    }
    public static void friendList(){
        list<string> friends = new List<String>();
        friends.add('Sachin');
        friends.add('Arpan');
        friends.add('Erik');
        system.debug('before '+friends);

        friends.sort();
        system.debug('after '+friends);
    }
}