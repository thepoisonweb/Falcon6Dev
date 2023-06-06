public class DecimalMethodsDemo {
    public void practice1(){
        decimal d1 = 7.56435456465;
        decimal d2 = 34.154684645;
        decimal d1x = d1.setScale(2);
        
        system.debug(d1x);
        system.debug(d2.setScale(3));

        string s = '88.77';
        decimal ds = Decimal.valueOf(s);
        system.debug(s+5);
        system.debug(ds+5);

        decimal myMoney = 554.894565468;
        decimal myMoney1 = myMoney.setScale(2);
        system.debug(myMoney1);
        string myMoney2 = myMoney1.toPlainString();
        system.debug(myMoney2);
        decimal myMoney3 = decimal.valueOf(myMoney2);
        system.debug(myMoney3);





    }
}