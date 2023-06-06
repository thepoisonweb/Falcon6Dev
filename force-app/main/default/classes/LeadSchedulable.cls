public class LeadSchedulable implements Schedulable{

    public void execute(SchedulableContext sc){
        LeadBatch lb = new LeadBatch();
        Database.executeBatch(lb, 50);
    }
    
}