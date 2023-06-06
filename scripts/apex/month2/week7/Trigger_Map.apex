Trigger_Map tMap= new Trigger_Map();

Id tId = tMap.InsertSF_Project();
System.debug('Id: '+tId);

tMap.updateSF_Project(tId,'Updated Trigger Project');