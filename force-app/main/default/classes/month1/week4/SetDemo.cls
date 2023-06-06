public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();

        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
       
        system.debug('set of cities: '+cities);
    }
    public static void randomIntegerSet(){
        set<integer> intSet = new set<integer>{};
        intSet.add(15);
        intSet.add(25);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        system.debug(intSet);
    }
    public static void setFromList(){

        list<integer> li = new List<integer>{10,15,15,21,21,55,101,101};
        system.debug('list integer-> '+li);

        set<integer>si= new set<integer>();
        si.addAll(li);
        system.debug('si integer-> '+si);

        list<integer> newLi = new list<integer>();
        newLi.addAll(si);
        system.debug('duplicateede list: '+newLi);
    }
    public static void upperCaseSet(){
        set<string> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');

        system.debug('cities==> '+cities);

        Set<String> citiesInCaps = new Set<String>();
        for (string eachCity : cities) {
            string temp = eachCity.toUpperCase();
            citiesInCaps.add(temp);
        }
        system.debug('cities in caps: '+citiesInCaps);
    }
    public static Set<String> upperCaseSet(Set<String> s1){
        Set<String> s1InCaps= new Set<String>();
        for (string eachStr : s1) {
            string temp= eachStr.toUpperCase();
            s1InCaps.add(temp);
        }
       
        return s1InCaps;
    }
}