public  class StudentMarkSheet {
    string firstName;
    string lastName;
    Integer mathematics;
    Integer english;
    Integer chemistry;
    static string schoolName;

    public StudentMarkSheet(){
        schoolName= 'Salesforce Public School';
    }
    public void setfirstName(string firstName){
        this.firstName=firstName;
    }
    public string getfirstName(){
        return this.firstName;
    }
    public void setlastName(string lastName){
        this.lastName= lastName;
    }
    public string getLastName(){
        return this.lastName;
    }
    public void setMarks(integer mathematics,integer english, integer chemistry){
        this.mathematics=mathematics;
        this.english= english;
        this.chemistry=chemistry;
    }
    public void showMarkSheet(){
        system.debug('Student name: '+firstName+' '+lastName);
        string schlN= schoolName;
        system.debug('School Name: '+schlN);
        system.debug('Mathematic mark: '+this.mathematics);
        system.debug('English mark: '+this.english);
        system.debug('Chemistry mark: '+this.chemistry);

        Integer sumMarks= mathematics+english+chemistry;

        if (sumMarks>=120) {
            System.debug('You are passed.');
        }else {
            System.debug('You need to study more');
        }
        system.debug('----------------------------');
    }
}