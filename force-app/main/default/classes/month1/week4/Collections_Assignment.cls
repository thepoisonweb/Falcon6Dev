public class Collections_Assignment {
    
    public static void listMethods(){
        //List Create & add(listElement)
       List<string> daysList = new List<string>{'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday','Saturday'};
        daysList.add('Sunday');
        system.debug('dayslist: '+daysList);
        //addAll(fromList)
        list<string> daysList3= new List<string>();
        daysList3.addAll(daysList);
        system.debug('DaysList added to dayList3: '+daysList3);
        //clone() 
        List<string> daysList2= daysList.clone();
        system.debug('daysList2: '+daysList2);
        // contains(listElement) 
        Boolean cont = daysList.contains('Sunday');
        system.debug('Does daysList contain Sunday? '+cont);
        //equal(list2) -Compare lists
        Boolean comp = daysList.equals(daysList2);
        system.debug('Are daysList and daysList2 same? '+comp);
        //get(index) 
        String day3 = daysList.get(2);
        system.debug('3. Day is '+day3);
        //indexOf(listElement) 
        integer iNum = daysList.indexOf('Wednesday');
        system.debug('Index number of Wednesday is '+iNum);
        //isEmpty()
        Boolean emp= daysList.isEmpty();
        system.debug('Is daysList empty? '+emp);
        //remove(index)
        daysList2.remove(6);
        system.debug('Sunday removed from daysList2: '+daysList2);
        //set(index, listElement)
        daysList2.set(2, 'Setday');
        system.debug('daysList2 with Setday '+daysList2);
        //size()
        integer sizeOfList= daysList.size();
        system.debug('daysList size: '+sizeOfList);
        //sort()
        daysList.sort();
        system.debug('Ascending order of daysList: '+ daysList);
        //toString()
        string weekDays= daysList.toString();
        system.debug('WeekDays as string '+weekDays);
        //clear()
        daysList.clear();
        system.debug('Clear daysList: ');
    }
    public static void setMethods(){

        //Set Create & add(SetElement)
      Set<String> setFruit = new Set<String>();
        setFruit.add('apple');
        setFruit.add('orange');
        setFruit.add('cherry');
        setFruit.add('strawberry');
        setFruit.add('pear');

        system.debug('Set Fruit: '+setFruit);

        //Set<T>(setToCopy)
        set<string> setFruit2 = new set<string>(setFruit);
        system.debug('Set Fruit 2: '+setFruit2);
        //contains(setElement)
        Boolean Appl = setFruit.contains('apple');
        system.debug('Does setFruit contain apple? '+Appl);
        //containsAll(setToCompare)
        boolean conSet= setFruit.containsAll(setFruit2);
        system.debug('Does setFruit contain setFruit2 ? '+conSet);
        //equals(set2)
        Boolean sameSet = setFruit.equals(setFruit2);
        system.debug('Are setfruit and setFruit2 same? '+sameSet);
        //isEmpty()
        Boolean emptySet = setFruit.isEmpty();
        system.debug('Is setFruit set empty? '+emptySet);
        //remove(setElement)
        setFruit2.remove('pear');
        system.debug('Pear removed from setFruit2 : ' +setFruit2);
        //removeAll(setOfElementsToRemove)
        setFruit2.removeAll(setFruit);
        system.debug('All setFruit elements removed from setFruit2: '+setFruit2);
        //size()
        integer sizeSet = setFruit.size();
        system.debug('Size of setFruit: '+sizeSet);
        //toString()
        string fruits= setFruit.toString();
        system.debug('All fruit as string: '+ fruits);
    }
}