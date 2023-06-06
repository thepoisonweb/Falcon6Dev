@isTest
public with sharing class IfElseConditionalTest {
    @isTest 
    private static void positiveOrNegativeTest() {
        IfElseConditional iec = new IfElseConditional();
        string msg1= iec.positiveOrNegative(5);
        Assert.areEqual('Positive', msg1);
        string msg2= iec.positiveOrNegative(-4);
        Assert.areEqual('Negative', msg2);
        string msg3= iec.positiveOrNegative(0);
        Assert.areEqual('Sifir', msg3);
    }
    @isTest 
    private static void phoneTest() {
        IfElseConditional iec = new IfElseConditional();
        string msg1 = iec.phone('2123215476');
        Assert.isNotNull(msg1);
        string msg2 = iec.phone('2163215476');
        Assert.isNotNull(msg2);
        string msg3 = iec.phone('3123215476');
        Assert.isNotNull(msg3);
        string msg4 = iec.phone('h123215476');
        Assert.isNotNull(msg4);
    }
}