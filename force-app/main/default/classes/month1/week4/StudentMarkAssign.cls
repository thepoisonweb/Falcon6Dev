public class StudentMarkAssign {
    public static void StudentMark() {
       //Create a Map named marksObtainInMaths which should contain the Student Roll Number to Marks Obtain (out off 50) mapping
        map<String, Integer> marksObtainInMaths = new Map<String,Integer>{'0111CE112' => 40,'0111CE102' => 19,'0111CE100' => 33,'0111CE098' => 40};
        
       // Add multiple mappings of your choice in the marksObtainInMaths Map. 
        marksObtainInMaths.put('0111CE103', 38);
        marksObtainInMaths.put('0111CE113', 43);
        marksObtainInMaths.put('0111CE118', 28);
        
        system.debug(marksObtainInMaths);
        //Print all the Student Roll Number present in the marksObtainInMaths
        Set<String> StudentRollNumber = new Set<String>();
        StudentRollNumber.addAll(marksObtainInMaths.keySet());

        system.debug('Student Rol Numbers: '+ StudentRollNumber);
        //Print all the Marks Obtain present in the marksObtainInMaths.
        List<Integer> MarksObtain= new List<Integer>();
        MarksObtain.addAll(marksObtainInMaths.values());

        system.debug('Marks: ' +MarksObtain);

        //Create a set as uniqueRollNumberSet and populate it with all the Roll number from marksObtainInMaths.
        Set<String> uniqueRollNumberSet= new Set<String>();
        for (string eachRollNumber : StudentRollNumber) {
            uniqueRollNumberSet.add(eachRollNumber);
        }
        System.debug('Unique Roll number set: '+uniqueRollNumberSet);

        //Create a List as marksObtainList and populate it with all the marks obtain from marksObtainInMaths.
        //Optional-- If the mark obtain is less than 20. Print the mgs (rollNumber + ‘ is not qualified for next class’)

        List<Integer> marksObtainList = new List<Integer>();
        for (string eachRollNumber : StudentRollNumber) {
            integer mark =marksObtainInMaths.get(eachRollNumber);
            
           if (mark<20) {
            System.debug(eachRollNumber+ ' is not qualified for next class');
           }else {
            marksObtainList.add(mark);
           }
        }system.debug('Qualified mark list: '+ marksObtainList);


    }
}