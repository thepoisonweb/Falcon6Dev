public class InventoryManager {
    String productName;
    String productCode;
    Integer costPrice=0;
    Integer sellingPrice=0;
    public static Integer productCount=0;

    //In the constructor, increase the productCount by one
    Public InventoryManager(){
        productCount++;
    }
    //Create a constructor with 2 parameters which will be productName and productCode.
    //In the constructor, increase the productCount by one.
    //Set productName and productCode.
    public InventoryManager(String productName,String productCode){
        productCount++;
        this.productName=productName;
        this.productCode= productCode;
    }
    //Create a getter and setter for costPrice and sellingPrice.
    public  void  setCostPrice(Integer costPrice){
        this.costPrice=costPrice;
    }
    public   Integer getCostPrice(){
        return this.costPrice;
    }
    public  void setSellingPrice(Integer SellingPrice) {
        this.sellingPrice=sellingPrice;
    }
    public   Integer getSellingPrice() {
        return this.sellingPrice;
    }
    public  void productDisplay() {
        System.debug('Product name: '+productName);
        System.debug('Product Code: '+productCode);
        System.debug('Product Cost Price: '+costPrice);
        System.debug('Product Selling Price '+sellingPrice);
        
        Integer profitPercent= (SellingPrice-CostPrice)*100/CostPrice;
        System.debug('Profit Percent '+profitPercent+'%');
        if (profitPercent>=20) {
            System.debug('Star Product');
        }else {
            System.debug('Average Product');
        }
        System.debug('------------');
       
        
    }

}