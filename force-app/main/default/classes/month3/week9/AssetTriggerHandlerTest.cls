@isTest
public class AssetTriggerHandlerTest {
    @isTest 
    private static void testAssetHandlerUpdate() {

        Account acc1 = new Account(Name='Test Account');
        insert acc1;
       
       List<Asset> listNewAssets = new List<Asset>();
       
        for (Integer i = 0; i < 25; i++) {
            Asset newassets = new Asset();
            newassets.Name='Test Asset Ship '+i;
            newassets.Status='Registered';
            newassets.AccountId=acc1.Id;

            Asset newassets2 = new Asset() ;
            newassets2.Name = 'Test Asset Install '+i;
            newassets2.Status='Registered';
            newassets2.AccountId=acc1.Id;

            Asset newassets3 =new Asset();
            newassets3.Name='Test Asset 1 '+i;
            newassets3.Status='Shipped';
            newassets3.AccountId=acc1.id;

            Asset newassets4 =new Asset();
            newassets4.Name='Test Asset 2 '+i;
            newassets4.Status='Installed';
            newassets4.AccountId=acc1.id;

            listNewAssets.add(newassets);
            listNewAssets.add(newassets2);
            listNewAssets.add(newassets3);
            listNewAssets.add(newassets4);
        }
        insert listNewAssets;

        Asset assetShip = [SELECT id,name,Status,Description FROM Asset where Status='Shipped' LIMIT 1];
        Assert.areEqual('Asset is shipped', assetShip.Description);
        Asset assetInstall =[SELECT id,name,Status,Description FROM Asset where Status='Installed' LIMIT 1];
        Assert.areEqual('Asset is Installed', assetInstall.Description);


        List<Asset> listAsset = [SELECT Id,name,Status,Description FROM Asset];
        
        for (Asset eachAsset : listAsset) {
            
                if (eachAsset.Name.contains('Ship')&&eachAsset.Status=='Registered') {
                    eachAsset.Status='Shipped';
                    
                }else if(eachAsset.Name.contains('Install')&&eachAsset.Status=='Registered'){
                    eachAsset.Status='Installed';
                }
        }
        update listAsset;

        List<Asset> allShippedAssets = [SELECT id,Status,Description FROM Asset WHERE Status='Shipped'];
        List<Asset> allInstalledAssets = [SELECT id,Status,Description FROM Asset WHERE Status='Installed'];
        
        Assert.areEqual(100, listNewAssets.size());
        Assert.areEqual(50, allShippedAssets.size());
        Assert.areEqual(50, allInstalledAssets.size());
        Assert.areEqual('Asset is shipped', allShippedAssets[0].Description);
        Assert.areEqual('Asset is Installed', allInstalledAssets[0].Description);
    }
}
