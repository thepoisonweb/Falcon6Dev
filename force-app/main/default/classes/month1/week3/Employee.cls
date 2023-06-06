public  class Employee {
    string name;
    decimal salary;

    public void setName(string name){
        this.name = name;
    }
    public string getName(){
        return this.name;

    }
    public void setSalary(decimal salary){
        if(salary>=8000 &&salary<=50000){
            this.salary= salary;
        }else{
            salary = 0;
            system.debug('Salary NOT in valid range');
        }
        
    }
    public decimal getSalary(){
        return this.salary;
    }
}