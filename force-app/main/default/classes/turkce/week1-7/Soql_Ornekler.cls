public  class Soql_Ornekler {
    public static void selectIndustry() {
       List<Account> accList=  [select id ,name, industry from account where industry = 'Education'];
       System.debug('Liste-> '+accList);
       System.debug('-----------Tek tek yazdirma-------------');

       for (Account eachacc : accList) {
        System.debug('Account => '+eachacc);
       }
       System.debug('----------name leri yazdiralim------------');
       for (Account eachacc : accList) {
        System.debug('name=> '+eachacc.Name);
        system.debug('industry name: '+eachacc.Industry);
       }
    }
    public static void selectIndustry2(string industry) {
        List<Account> accList=  [select id ,name, industry from account where industry =:industry ];
        System.debug('Liste-> '+accList);
        System.debug('Record sayilari: '+accList.size());
        System.debug('-----------Tek tek yazdirma-------------');
 
        for (Account eachacc : accList) {
         System.debug('Account => '+eachacc);
        }
        System.debug('----------name leri yazdiralim------------');
        for (Account eachacc : accList) {
         System.debug('name=> '+eachacc.Name);
         system.debug('industry name: '+eachacc.Industry);
        }
     }

     public static void childToParent() {
        List<Contact> conList =[select id ,name, account.name, account.annualRevenue from contact where account.annualRevenue !=null];
        System.debug('listemizdeki record sayisi: '+ conList.size());

        for (Contact eachCon : conList) {
            System.debug(eachCon.Name+ ' Contactinin bagli oldugu accoutun adi= '+ eachCon.Account.Name+' ve bu accountun Annual Revenue = '+eachCon.Account.AnnualRevenue);
            System.debug('---------------');
        }
     }
     public static void parentToChild() {
       List<Account> accList= [select id ,name, createddate,(select id, name from contacts),(select id, name from opportunities) from account order by createddate desc limit 5 ];
       for (Account eachacc : accList) {
        System.debug('===============Contact====================');
            if (!eachacc.Contacts.isEmpty()) {
                System.debug('name= '+eachacc.Name);
                System.debug('contactlar= '+eachacc.Contacts);
                System.debug('---------------');
                for (Contact con : eachacc.Contacts) {
                    System.debug('contact name= '+con.Name);
                }
            }
            System.debug('=========Opportunities==========');
            System.debug('opportunity= '+eachacc.Opportunities);
            for (Opportunity opp : eachacc.Opportunities) {
                System.debug('opp name= '+opp.Name);
            }
            
       }
     }
}