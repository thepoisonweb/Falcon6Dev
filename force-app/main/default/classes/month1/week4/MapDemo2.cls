public  class MapDemo2 {
    public static void mapExample2() {
        Map<String,decimal> mp2= new map<String ,decimal>();
        mp2.put('apple', 5.5);
        mp2.put('pen', 10.5);
        mp2.put('shirt', 50.5);
        mp2.put('laptop', 1500.00);
        System.debug('map2 is '+mp2);

        map<String,decimal> lowerMap = new map<string,decimal>();
        map<String,decimal> higherMap = new map<string,decimal>();

        Set<String> allItems = mp2.keySet();
        for (string eachItem : allItems) {
            decimal eachPrices = mp2.get(eachItem);
            if (eachPrices>100) {
                higherMap.put(eachItem, eachPrices);
                system.debug('Higher: '+eachItem+ '--> '+eachPrices);
            }else {
                lowerMap.put(eachItem, eachPrices);
                system.debug('Lower: '+eachItem+ '--> '+eachPrices);

            }
            
        }
        system.debug('higher map is '+higherMap);
            system.debug('higher map is '+lowerMap);
    }
    public static string retrieveMonth(integer m) {
        string month='';

        map<integer,string> monthMap = new map<Integer, string>{1=>'January' , 2=> 'February'};
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');
        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'July');
        monthMap.put(8, 'August');
        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        if (monthMap.containsKey(m)) {
            month= monthMap.get(m);
        }else {
            month= 'No such month exist.';
        }

       

        return month;

    }
}