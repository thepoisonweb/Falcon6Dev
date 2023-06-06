public class NewCar {
    Integer currentSpeed=0;
    String carType;
    string carName;
    
    public void startCar(string carT, string carN){
        carType = carT;
        carName = carN;
        system.debug('Car Type: ' +carType+', Car Name: '+carName);
    }
    public void accelerate(integer x){
        currentSpeed= currentSpeed+x;
        system.debug('New Speed: '+currentSpeed);
    }
    public void brake(integer y){
        currentSpeed = currentSpeed-y;
        system.debug('new speed: '+currentSpeed);
    }
    public void stopCar(){
        currentSpeed = 0;
        system.debug('Car stopped: '+currentSpeed);
    }
    public string checkSpped(){
        string mode;
        if (currentSpeed>0 &&currentSpeed<=30) {
            mode= 'City Mode';
        }else if (currentSpeed<=60&& currentSpeed>0) {
            mode= 'Economy Mode';
        }else if(currentSpeed>60){
            mode= 'Sport Mode';
        }else if(currentSpeed<0){
            mode= 'Reverse Mode';
        }
        system.debug('Car mode is '+mode);
        return mode;
    }
}