InventoryManager product1 = new InventoryManager();
InventoryManager product2 = new InventoryManager();
InventoryManager product3 = new InventoryManager('Jar','001G');
InventoryManager product4 = new InventoryManager('Bucket','002P');
InventoryManager product5 = new InventoryManager('Iron','003E');
product1.setCostPrice(10);
product2.setCostPrice(20);
product3.setCostPrice(30);
product4.setCostPrice(40);
product5.setCostPrice(12);

product1.setSellingPrice(20);
product2.setSellingPrice(25);
product3.setSellingPrice(33);
product4.setSellingPrice(48);
product5.setSellingPrice(120);

product1.getCostPrice();
product2.getCostPrice();
product3.getCostPrice();
product4.getCostPrice();
product5.getCostPrice();

product1.getSellingPrice();
product2.getSellingPrice();
product3.getSellingPrice();
product4.getSellingPrice();
product5.getSellingPrice();

product1.productDisplay();
product2.productDisplay();
product3.productDisplay();
product4.productDisplay();
product5.productDisplay();

System.debug('Total product: '+InventoryManager.productCount);
