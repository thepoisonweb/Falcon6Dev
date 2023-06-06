List<String> sehirler = new List<String>{'istanbul', 'New York', 'Toronto', 'London', 'Amsterdam', 'New York'};
system.debug('sehirler: '+sehirler);

Set<String> ulkeler = new Set<String>{'Turkey','USA', 'Canada', 'Turkey', 'Nederland', 'Germany'};
system.debug('ulkeler: '+ulkeler);

Set<String> sehirlerSet = new Set<String>();
sehirlerSet.addAll(sehirler);
system.debug('set ile sehirler:  '+sehirlerSet);

Map<Integer, String> ogrenciMap = new Map<Integer, String>();
ogrenciMap.put(11, 'John');
ogrenciMap.put(16, 'Lisa');
ogrenciMap.put(22, 'Alperen');
ogrenciMap.put(25, 'Fatma');
ogrenciMap.put(33, 'John');
ogrenciMap.put(16, 'Mary');
system.debug('Ogrenciler: '+ogrenciMap);

Set<Integer> ogrenciNo = new Set<Integer>();
ogrenciNo = ogrenciMap.keySet();
system.debug('Ogrenci nolari: '+ogrenciNo);

List<String> isimList = new List<String>();
isimList = ogrenciMap.values();
system.debug('ogrenci isimleri: '+isimList);
