@isTest
public class Calculator9Test {
    @isTEst
    public static void testMethod1() {
        Calculator9 c = new Calculator9();
        c.add(1.1, 8.5);
    }
    @isTest
    public static void testAddMethod(){
        Calculator9 c = new Calculator9();
        integer sum=c.add(5,5);

        system.assertEquals(10, sum);
    }
    @isTest
    public static void testAddMethod2(){
        Calculator9 c = new Calculator9();
        integer sum= c.add(5,5,6);

        assert.areEqual(16, sum);
    }
    @isTest
    public static void testLeapYear(){
        Calculator9 c = new Calculator9();
        Boolean ly = c.leapYearCheck(date.today());

        Assert.areEqual(false, ly);
    }
}