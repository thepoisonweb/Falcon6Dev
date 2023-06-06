public class AccountSchedulable implements Schedulable {

    public void execute(SchedulableContext SC) {

        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 50);

        DepartmentBatch db = new DepartmentBatch();
        Id JobID = Database.executeBatch(db, 5);
        system.debug('JOB ID is '+JobID);
    }

}