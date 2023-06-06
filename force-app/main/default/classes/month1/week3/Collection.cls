public class Collection {
    public static string listAssignment(integer i){
        
        List<string> LstMonth = new List<string>();
        string output_Month='';

        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        integer size = LstMonth.size();

        if (i<size && i>=0) {
            output_Month= LstMonth.get(i-1);
        }else {
            output_Month= 'Not a valid month!';
        }
        return output_Month;
    }
}