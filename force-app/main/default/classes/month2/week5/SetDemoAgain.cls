public class SetDemoAgain {
    public static void printCountrySet() {
        Set<string> countries = new set<string>{'USA' , 'UK','France','Germany', 'Australia'};

        countries.add('USA');
        countries.add('Spain');

        system.debug('all countries: '+countries);
        system.debug('Chech UK is present: '+countries.contains('UK'));
        system.debug('number of countries: '+ countries.size());

        countries.add('USA');
        countries.add('usa');
        countries.add('Usa');
        countries.add('uSa');

        system.debug('Countries: '+countries);
    }
    public static void practset() {
        set<integer> s1 = new set<integer>{5,2,25,1};

        set<istring> s3 = new set<string>{'5','2','25','1'};
    }
    public static void setOfList() {
        set<list<integer>> sl= new set<list<integer>>();

        list<integer> l1 = new List<integer>{1,5,4,7,10};
    }


    }
