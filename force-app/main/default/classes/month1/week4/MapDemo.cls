public class MapDemo {
    public static void mapStringInteger(){
        Map<String,Integer> map1= new Map<String,Integer>();
        map1.put('one',101);
        map1.put('two',202);
        map1.put('three', 303);
        map1.put('one',1001);
        map1.put('ten', 1001);

        system.debug(map1);

        List<Integer> l=map1.values();
        system.debug(l);
    }
}