public class AGSLaborRateWrapper {
	public double labor_rate;
    
    public static AGSLaborRateWrapper parse(String json){
        return(AGSLaborRateWrapper) system.JSON.deserialize(json,AGSLaborRateWrapper.class);
    }
}