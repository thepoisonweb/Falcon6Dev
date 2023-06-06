public class ModernMaths {
    public void printFactors(Integer Num){
        List<Integer> factors = new List<Integer>();

       for (Integer i = 1; i <= Num; i++) {
        if (math.mod(Num,i)==0) {
            factors.add(i);
        }
       }
       system.debug('Factors of '+Num+ ' : '+factors);
      
    }
}