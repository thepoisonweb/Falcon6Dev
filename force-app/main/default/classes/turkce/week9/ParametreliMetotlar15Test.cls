@isTest
public class ParametreliMetotlar15Test {
    @isTest
    private static void printWlcomeTest() {
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        pm.printWelcome();
    }
    @isTest 
    private static void welcomePersonTest() {
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        pm.welcomePerson('John');
    }
    @isTest 
    private static void toplamaTest() {
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        integer toplam = pm.toplama(11, 22);
        Assert.areEqual(33, toplam);
    }
    @isTest 
    private static void artikYilTest() {
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        date dt = date.newInstance(2023, 5, 24);
        Boolean result = pm.artikYil(dt);
        Assert.isFalse(result);
    }
    @isTest 
    private static void uzunlukTest() {
        ParametreliMetotlar15 pm = new ParametreliMetotlar15();
        integer kuzun=pm.uzunluk('elma');
        Assert.areEqual(4, kuzun);
    }
}