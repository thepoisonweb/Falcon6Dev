public class MapDemoAgain {
    public static void printMap1() {
        map<integer,string> map1 = new map<integer,string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);

        integer rollNo = 1011;
        string studentName = map1.get(rollNo);
        system.debug('student name for 1011 is '+studentName);

        integer rollNo2= 1055;
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2+ ' student name is '+map1.get(rollNo2));
        }else {
            system.debug('No such roll no is present in our student record');
        }
    }
    public static void printMap2() {
        map<integer,string> map1 = new map<integer,string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        system.debug(map1);

        Set<Integer> allRollNo = map1.keySet();
        system.debug('number of roll numbers: '+allRollNo.size());
        system.debug('all roll no: '+allRollNo);

        List<string> allStudent = map1.values();
        system.debug('all students are '+allStudent);
    }
    public static void printMap3() {
        map<integer,string> map1 = new map<integer,string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Monica');
        map1.put(1033, 'Lui');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');
        map1.put(1066, 'Alex');
        map1.put(1077, 'Ben');
        system.debug(map1);

        Set<Integer> allKeys = map1.keySet();
        for (integer eachKey : allKeys) {
            string sn = map1.get(eachKey);
            system.debug('roll not is '+eachKey+ ', student name is '+sn);
        }
    }
    public static void printMap4() {
        map<string, list<string>> m9 = new map<string, list<string>>();
        //key is department name. (string)
        //value is all the memebers of that department. (list<string>)

        list<string> itTeam = new list<string>{'Brian', 'Decker'};
        list<string> salesTeam = new list<string>{'John', 'Jane'};
        list<string> serviceTeam = new list<string>{'Monica', 'Alex'};

        m9.put('IT', itTeam);
        m9.put('Sales', salesTeam);
        m9.put('Service', serviceTeam);

        system.debug(m9);
    }
    
}