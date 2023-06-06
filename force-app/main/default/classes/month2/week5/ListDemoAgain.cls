public with sharing class ListDemoAgain {
   public static void randomIntegerList() {
    List<integer> intList = new List<integer>();

    intlist.add(90);
    intList.add(15);
    intList.add(77);
    intList.add(21);
    intList.add(15);
    intList.add(15);

    system.debug('int List: '+intList);
    integer size = intList.size();
    system.debug('size of list is '+size);

    integer int3 = intList.get(3);
    integer int31 = intList[3];

    system.debug('int3 is '+int3);
    system.debug('int31 is '+int31);

    intList[4]=30;
    system.debug('after update '+intList);
    }
    public static void practiceList1() {
        list<integer> l1 = new list<integer>();

        for (Integer i = 1; i <=5; i++) {
            l1.add(i*11);
            
        }
        system.debug(l1);
    }
    public static void printAnimalsList() {
        List<string> animals =new list<string>();

        animals.add('dog');
        animals.add('cat');
        animals.add('horse');
        animals.add('monkey');
        animals.add('tiger');
        animals.add('lion');
        animals.add('lion');

        system.debug('animals: '+animals);

        integer numOfAnimals = animals.size();
        system.debug('nnumber of animaks: '+numOfAnimals);
        system.debug('last element is '+animals.get(numOfAnimals-1).toUpperCase());

        animals.remove(numOfAnimals-1);
        system.debug('after removal, animals: '+animals);

        if (animals.contains('lion')) {
            system.debug('list has lion');

        }else {
            system.debug('no lion');
        }
    }
    public static void printAnimalsList2() {
        
        List<string> animals =new list<string>();

        animals.add('dog');
        animals.add('cat');
        animals.add('horse');
        animals.add('monkey');
        animals.add('tiger');
        animals.add('lion');
        animals.add('lion');

        List<string> animals2 = new List<String>{'kangroo','bear','deer','bear','deer'};
        system.debug('2nd animal list is empty? '+animals2.isEmpty());

        animals2.addAll(animals);
        system.debug('animals2: '+animals2);

        system.debug('index of bear: '+animals2.indexOf('bear'));
        system.debug('index oof Bear: '+animals2.indexOf('Bear'));
    }
}