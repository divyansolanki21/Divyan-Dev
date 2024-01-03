**Shipment Tracking Lightning Web Component
**

A LWC Component has been developed for the shipment tracking purposes. This LWC component is supposed to be placed on the Shipment record page, 
however in my developer org I have added it on the Contact layout.

The main branch contains the following files:
1) LWC HTML
2) LWC JS
3) LWC Meta XML file
4) Apex Controller

 Assumptions
 1) There is a field tracking_number__c on the shipment object, which stores the tracking number of the shipment record. In my development, I have added this field on the contact object.
 2) The LWC is placed on the record layout and it has a Track Shipment button.
 3) On the click of this button, the status of the shipment would be fetched by picking up the tracking number value from the custom field.

 Note: The endpoint has been stored in the Named credentials for callout purposes.   
