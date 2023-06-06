public class CasesQueueable implements Queueable{

    public Id defaultAccId;
    public List<Case> cases;

    public CasesQueueable() {

    }
    public CasesQueueable(Id defaultAccId, List<Case> cases){
        this.defaultAccId= defaultAccId;
        this.cases = cases;
    }
    public void execute(QueueableContext qc){
        System.debug('inside execution');
        for (Case eachCase : cases) {
            eachCase.AccountId=defaultAccId;
        }
        update cases;
    }
}