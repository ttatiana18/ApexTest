public with sharing class AGSLaborRateCallout {
    public static Double getLaborRate(Double zip_code){
        HTTP http = new HTTP();
        HTTPREQUEST request = new HTTPREQUEST();
        request.setEndpoint('https://agsdev-ags.cs10.force.com/services/apexrest/v1/carsApi?zipcode='+zip_code);
        request.setMethod('GET');
        
        HTTPRESPONSE response = http.send(request);
        
        if(response.getStatusCode() == 200){
            AGSLaborRateWrapper responseWrapper = AGSLaborRateWrapper.parse(response.getBody());
            System.debug('response:'+responseWrapper.labor_rate);
            return (Double)responseWrapper.labor_rate;
        }else{
            return 1;
        }
    }
}