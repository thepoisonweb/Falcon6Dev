public  class MethosDemo {
    public void welcomeMessage(){
        system.debug('Hi there, welcome to the jungle!');

    }
    public void samplePrintMessage(string message){
        system.debug(message);
    }

    public void newMessage(string name){
        system.debug('Hi ' + name + ' ,welcome to the world');
    }

    public string retunMessage(string name){
        system.debug('inside returnMessage method');
        string Str = 'Hey '+name+',nice to meet you.';
        return Str;
    }
}