public class MethodsDemo2 {
    public Boolean nameContainsA(string name) {
       Boolean containsA = name.containsIgnoreCase('a') ;
       system.debug(containsA);
       return containsA;

    }
}