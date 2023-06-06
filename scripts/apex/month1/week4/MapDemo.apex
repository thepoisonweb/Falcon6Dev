MapDemo.mapStringInteger();

Map<String,String> mapCC = new Map<String,String>();
mapCC.put('USA' ,'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India' , 'Rupees');
mapCC.put('India', 'Rupee');
mapCC.put('Turkey', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa', 'usd');

system.debug(mapCC);

string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
System.debug(currIndia);

string country = 'Turkiye';
String curr = mapCC.get(country);
system.debug(country+ 'currency is '+ curr);

set<string> allCountry = mapCC.keySet();
system.debug('all countries ' + allCountry);

List<String> allCurrencies = mapCC.values();
system.debug('all currencies => ' + allCurrencies);

set<string> allCountries = mapCC.keySet();

for (string eachCountry : allCountries){
    system.debug('Country is '+eachCountry);
    string eachCurrency = mapCC.get(eachCountry);
    system.debug('Currency id '+eachCurrency);
    System.debug('----');
}