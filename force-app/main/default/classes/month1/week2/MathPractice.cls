public class MathPractice {
    public decimal practiceOne(decimal x, decimal y){

        system.debug('x= '+x);
        
        system.debug('y= '+y);

        decimal perimeter = 2*(x+y);
        system.debug('perimeter: '+ perimeter);

        return perimeter;
    }
    public decimal practiceTwo(decimal weight, decimal height){
        decimal bmi = weight / (height * height);

        string bmiString = 'Bmi: ' + bmi;

        return bmi;
    }
    public decimal  practiceThree(integer x, integer y){
        
        decimal average= (x + y)/2.0;
         
        return average;
    }
    public string practiceFour(decimal amount){
        
        String bonusMsg = '';

        if (amount<=0) {
            bonusMsg = 'Hatali bir deger girdiniz.';            
        }else if (amount<50) {
            bonusMsg= 'Bonus Kazanamadiniz.';
        }else if (amount<200) {
            
            bonusMsg = amount +'$ tutarindaki alisveris karsiligi $10 tutarinda bonus kazandiniz.';
        }else if (amount<500) {
            bonusMsg = amount+'$ tutarindaki alisveris karsiligi $30 tutarinda bonus kazandiniz.';
        }else if (amount>=500) {
            bonusMsg = amount+'$ tutarindaki alisveris karsiligi $50 tutarinda bonus kazandiniz.';
        }
        return bonusMsg;
    }
    public decimal praticeFive(integer adet, string urun){
        decimal ekmekUcret= 1;
        decimal simitUcret=2;
        decimal kekUcret = 3;
        decimal siparis ;
        /*if(urun=='EKMEK'){
            siparis=adet*ekmekUcret;
        }else if(urun== 'SIMIT'){
            siparis= adet*simitUcret;
        }else if(urun== 'KEK'){
            siparis = adet*kekUcret;
        }else {
            siparis=0;
        }*/
        switch on urun {
            when 'EKMEK' {
                siparis= adet*ekmekUcret;
            }when 'SIMIT' {
                siparis=adet*simitUcret;
            }when 'KEK'{
                siparis=adet*kekUcret;
            }
        }
        system.debug('Almis oldugunuz '+adet+' adet '+urun+' tutari '+siparis+' $ dir.');
        return siparis;
    }
    public void practiceSix(decimal kisa, decimal uzun, string islem){
        decimal alan =kisa*uzun;
        integer tamAlan = Math.round(alan);
        decimal cevre = 2*(kisa+uzun);
        integer tamCevre =Math.round(cevre);

        switch on islem {
            when 'alan' {
                system.debug('Kenar olculeri '+kisa+' ve '+uzun+' olan dikdortgenin alani: '+tamAlan);
            }
            when 'cevre' {
                system.debug('Kenar olculeri '+kisa+' ve '+uzun+' olan dikdortgenin cevresi: '+tamCevre);
            }
            when else {
                system.debug('Lutfen gecerli bir islem turu giriniz.');
            }
        }

    }
    public string practiceSeven(decimal boy, decimal kilo){
       
        decimal vki = kilo / (boy*boy);
        decimal vkiRounded= vki.setScale(1, RoundingMode.HALF_EVEN);

        string durum;

        if (vkiRounded>=0 && vkiRounded<=18.4) {
            durum= 'Zayif';
        }else if (vkiRounded<=24.9) {
            durum = 'Normal';
        }else if (vkiRounded<=29.9) {
            durum=' Kilolu';
        }else if (vkiRounded<0 || vkiRounded>=30) {
            durum='Hatali deger girdiniz.';
        }
        system.debug('Vucut kitle indeksiniz: '+VkiRounded+' ve durumunuz: '+ durum);
        return durum;
    }
    public integer practiceEight(integer x, integer y){
        integer toplam=0;

        if (x==y) {
            toplam=x+y;
            system.debug(x+' ve '+y+' sayilarin toplami: '+ toplam);
        }else {
            integer min= math.min(x, y);
            integer max = math.max(x, y);
            for (Integer i = min; i <= max; i++) {
                toplam +=i; 
        }system.debug(x+' ve '+y+'arasmdaki sayilarin toplami: '+ toplam);
       
        
       }
        return toplam;
    }
}