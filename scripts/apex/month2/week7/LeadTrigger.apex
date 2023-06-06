List<Lead> leadList= new List<Lead>();

For(Integer i=0;i<4;i++){
    Lead lea = new Lead();
    lea.Lastname= 'Brown '+i;
    lea.Company= 'Mr&Mrs Brown Consultant';
    lea.Status='Working - Contacted';
    leadList.add(lea);
}
insert leadList;

for(Lead eachLead: leadList){
    eachLead.Description='Field Updated from Anonymous';
}
update leadList;