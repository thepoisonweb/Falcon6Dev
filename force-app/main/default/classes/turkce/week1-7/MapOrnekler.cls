public class MapOrnekler {

    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.
    public static void sehirSicakliklari() {
        map<String,List<decimal>> citiesOfHot = new map<String,List<decimal>>();

        List<decimal> istanbulOfHot = new List<decimal>{11.5,17.4,21.3,15.5,8.7,22.2,19.9};
        citiesOfHot.put('Istanbul' ,istanbulOfHot);

        List<decimal> AdanaOfHot = new List<decimal>{30.2,42.2,30.5,43.3,40.9,39.5,38.6};
        citiesOfHot.put('Adana', AdanaOfHot);

        List<decimal> AmsterdamOfHot = new List<decimal>{11.5  ,7.4,11.2,25.5,8.7,2.2,9.9};
        citiesOfHot.put('Amsterdam', AmsterdamOfHot);

        List<decimal> LondonOfHot = new List<decimal>{1.5,7.4,1.3,4.3,4.9,3.5,8.6};
        citiesOfHot.put('London', LondonOfHot);

        System.debug('Map: '+citiesOfHot);

        //sehir ve sicaklik ortalamasini icine alan ayri bir map olsturalim.

        Map<String,decimal> maportSicaklik = new Map<String,decimal>();
        for(string eachcity: citiesOfHot.keySet()){
            System.debug(eachcity);
            system.debug(citiesOfHot.get(eachcity));
            decimal sum = 0;
            for (decimal eachsicaklik : citiesOfHot.get(eachcity)) {
                sum+= eachsicaklik;
            }
            decimal Average= sum/(citiesOfHot.get(eachcity).size());
            maportSicaklik.put(eachcity, Average.setScale(1));
        }
        system.debug('Ortalama sicakliklar: '+maportSicaklik);

        set<string> less10 = new Set<String>();
        set<String> more10 = new Set<String>();

        for (string eachCity : maportSicaklik.keySet()) {
            if (maportSicaklik.get(eachCity)>10) {
                more10.add(eachCity);
            }else {
                less10.add(eachCity);
            }
        }
        system.debug('10 derecnin ustunde olan sehirler: '+more10);
        system.debug('10 derecenin altinda olan sehirler: '+less10);


    }
}