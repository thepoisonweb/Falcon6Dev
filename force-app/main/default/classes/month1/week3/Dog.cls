public class Dog {
    string name;
    string color;
    integer age;

    public Dog(){
        age = 1;
        checkAge();
    }
    public Dog(string nam, string col, integer ag){
        name=nam;
        color = col;
        age= ag;
        checkAge();
    }
    public void checkAge(){
        if (age>=0 && age<=1) {
            system.debug('Puppy Dog');
        }else if (age<=3) {
            system.debug('Young Dog');
        }else if (age<=5){
            system.debug('Adult Dog');
        }else if(age>5){
            system.debug('Old Dog');
        }
    }
}