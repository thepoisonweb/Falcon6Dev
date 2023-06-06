public class pizzaClass {
    
    integer orderId = 0;
    integer quantity;
    string toppings;
    string type;
    decimal tax;
    string feedback;

    public void addCart(integer qty,string top, string typ){
        orderId++;
        quantity = qty;
        toppings = top;
        type = typ;
        
        if (quantity==1) {
            tax= 0.18;
        }else if (quantity==2) {
            tax = 0.12;
        }else if (quantity==3) {
            tax = 0.06;
        }else if (quantity>=4) {
            tax= 0;
        }
        
    }
    public void cancelCart(){
        orderId = 0;
       system.debug('Order Id: '+orderId) ;
       
    }
    public void feedback(string feedB){
        feedback=feedB;
        system.debug('Feedback: '+feedback);
    }
}