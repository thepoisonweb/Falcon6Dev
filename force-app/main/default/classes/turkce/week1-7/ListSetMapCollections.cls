public class ListSetMapCollections {
    public static List<String> heros(List<String> heroList) {
        List<String> updateHeroList = new List<String>();
        
        if (!heroList.isEmpty()) {
            for (String eachHero : heroList) {
                string addMan;
                if (eachHero=='he') {
                    addMan=eachHero+'-man';
                } else {
                    addMan=eachHero+'man';
                }
                updateHeroList.add(addMan);
            }
        }
        system.debug('herosman: '+updateHeroList);
        return updateHeroList;
    }
    public static Integer minNumner(List<Integer> sayiList) {
        Integer minNum;
        if (!sayiList.isEmpty()) {
            
            minNum=sayiList.get(0);
            for (Integer sayi : sayiList) {
                if (sayi<minNum) {
                    minNum=sayi;
                }
            }
        }
        system.debug('Min number: '+minNum);
        return minNum;
    }
    public static Integer minNumber2(List<Integer> sayiList) {
        Integer minNum;
        system.debug('ilk liste: '+sayiList);
        sayiList.sort();
        System.debug('sort metodundan sonra liste: '+sayiList);
        minNum= sayiList.get(0);
        return minNum;
    }
    public static void tekCiftSayilar(List<Integer> sayilar) {
        List<Integer> tekSayilar = new List<Integer>();
        List<Integer> ciftSayilar = new List<Integer>();

        if (!sayilar.isEmpty()) {
            for (Integer sayi : sayilar) {
                integer kalan= Math.mod(sayi, 2);
                if (kalan==1) {
                    tekSayilar.add(sayi);
                } else {
                    ciftSayilar.add(sayi);
                }
            }
            System.debug('tek sayilar: '+tekSayilar);
            System.debug('cift sayilar: '+ciftSayilar);

            Integer tekMin= minNumber2(tekSayilar);
            System.debug('en kucuk tek sayi: '+ tekMin);

            Integer ciftMin = minNumber2(ciftSayilar);
            system.debug('en kucuk cift sayi: '+ciftMin);
        }
    }
    public static void PlakaSehir() {
       //plaka ve sehirlerden olusan map olustur.
        Map<Integer,String> PlakaSehir = new Map<Integer,String>();
        PlakaSehir.put(34, 'Istanbul');
        PlakaSehir.put(16, 'Bursa');
        PlakaSehir.put(35, 'Izmir');
        PlakaSehir.put(42, 'Konya');
        PlakaSehir.put(27, 'Gaziantep');

        system.debug('Plaka ve Sehirler: '+PlakaSehir);

        //Istanbul ve Trabzon map'de varmi, kontrol et.
        Boolean istanbul= PlakaSehir.containsKey(34);
        Boolean trabzon = PlakaSehir.containsKey(61);
        System.debug('Map\'de Istanbul var mi? '+ istanbul+ ' -----Map\'de Trabzon var mi? '+trabzon);

        //Map'in eleman sayisini yazdiralim.
        System.debug('Map\'in eleman sayisi: '+PlakaSehir.size());

        //16 nolu plakayi mapten cikar.
        PlakaSehir.remove(16);
        System.debug('Bursa map\'den cikarildiktan sonra map '+PlakaSehir);

        //mapdeki plakalardan olusan set olustur
        Set<Integer> Plaka = new Set<Integer>();
        Plaka.addAll(PlakaSehir.keySet());
        System.debug('Plaka Set: '+Plaka);

        //mapdeki sehirlerden olusan liste

        List<String> Sehirler=  new List<String>();
        Sehirler.addAll(PlakaSehir.values());
        System.debug('Sehirler List: '+ Sehirler);

        //Plaka ve sehir ismini ayni debugda yazdir
        for(integer herPlaka: Plaka){
            string herSehir= PlakaSehir.get(herPlaka);
            system.debug(herPlaka+' == '+herSehir);
        }
    }
}