public with sharing class shipmentTrackerController {
    
    // This method will fetch the tracking number of the shipment record and do the http callout
    @AuraEnabled
    public static string showShipmentDetails(String recId){
        
        String trackingNum = '';
        List<Contact> listCon = [Select id, Tracking_Number__c from contact where id =: recId];
        
        if (!listCon.isEmpty()){
            trackingNum = listCon[0].Tracking_Number__c;
        }
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        
        // Provide the Named Credentials
        if (String.isBlank(trackingNum)  || trackingNum == null){
            request.setEndpoint('callout:findShipmentDetails');
        }else{
            request.setEndpoint('callout:findShipmentDetails'+ '?'+'trackingNumber='+trackingNum);
        }
        request.setMethod('GET');        
        HttpResponse response = http.send(request);
        
        if (response.getStatusCode() == 200) {
            return response.getbody();
        }else{
            return 'error found';
        }
        
    }
}
