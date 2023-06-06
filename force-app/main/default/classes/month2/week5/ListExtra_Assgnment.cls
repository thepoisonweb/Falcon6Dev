public  class ListExtra_Assgnment {
    public static void schoolsLists(string medium) {
        list<string> allSchools  = new List<String>{'S1 English', 'S2 English', 'S3 Turkish', 'S4 English', 'S5 Turkish', 'S6 Japanese'};

        list<string> listMedium = new list<string>();

       for (string eachSchool : allSchools) {
        if (eachSchool.contains(medium)) {
            listMedium.add(eachSchool);
        }
       }
       system.debug('All '+medium+' Schools: '+listMedium);
       

    }
}