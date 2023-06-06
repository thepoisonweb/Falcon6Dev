@isTest
public with sharing class ForLoopTEst {
    @isTest 
    private static void sumTest() {
        ForLoop fl = new ForLoop();
        fl.sum(5);
    }
    @isTest 
    private static void helloTest() {
        ForLoop fl = new ForLoop();
        string msg = fl.hello('ali');
        Assert.isNotNull(msg);
        Assert.areEqual(' hello 1 hello 2 hello 3', msg);
    }
}