public class ListExtra_Assignment {
    public static Map<String,List<String>> schoolsMaps(string medium1,string medium2,string medium3) {
        List<String> ListSchools = new List<String>{'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};
        Map<String,List<String>> School_Maps = new Map<String,List<String>>();
        List<string> ListForMedium1 = new List<string>();
        List<string> ListForMedium2 = new List<string>();
        List<string> ListForMedium3 = new List<string>();

       for (string eachMedium : ListSchools) {
        if (eachMedium.contains(medium1)) {
            ListForMedium1.add(eachMedium);
            
            }else if (eachMedium.contains(medium2)) {
                ListForMedium2.add(eachMedium);
            }else if (eachMedium.contains(medium3)) {
                ListForMedium3.add(eachMedium);
            }
            School_Maps.put(medium1, ListForMedium1);
            School_Maps.put(medium2, ListForMedium2);
            School_Maps.put(medium3, ListForMedium3);
        }
        
        System.debug('All Medium School Maps: '+School_Maps);
        return School_Maps;
    }
}