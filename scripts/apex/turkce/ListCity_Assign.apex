List<String> listCity =new List<String>{'Madrid', 'Amsterdam', 'Istanbul', 'New York', 'Paris', 'Toronto'};
System.debug('Sehirler: '+listCity);

Integer sizeOfList = listCity.size();
System.debug('Listenin eleman sayisi: '+sizeOfList);

String ilk = listCity.get(0);
String son = listCity.get(listCity.size()-1);
System.debug('Listenin ilk sehri: '+ilk+ ' -----Listenin son sehri: '+son);

boolean checkIstanbul = listCity.contains('Istanbul');
Boolean checkRoma = listCity.contains('Roma');
System.debug('Istanbul sehri listede var mi? '+checkIstanbul+'---- Roma sehri listede var mi? '+checkRoma);

List<String> listCityCity= new List<String>();
For(String eachSehir: listCity){
    string addCity= eachSehir+' city';
    listCityCity.add(addCity);
}
System.debug('City eklenmis sehirler: '+listCityCity);

Set<String> setCity = new Set<String>();
setCity.addAll(listCity);
System.debug('SetCity : '+setCity);

setCity.remove('Paris');
System.debug('Paris sehirlerden cikarildi: '+setCity);

setCity.add('Istanbul');
setCity.add('Madrid');
Integer setSize= setCity.size();
System.debug('Istanbul ve Madrid sehirlere eklendi: '+setCity+ ' ve setimizin eleman sayisi: '+setSize);

setCity.removeAll(setCity);
if(setCity.size()==0){
    System.debug('SetCity\'nin butun elemanlari silinmistir.');
}else{
    System.debug('Silme islemi basarisiz olmustur.');
}
// veya
Boolean setBos = setCity.isEmpty();
System.debug('SetCity\'nin butun elemanlari silindi mi? '+setBos);





