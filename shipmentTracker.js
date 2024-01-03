import { LightningElement,api } from 'lwc';
import showShipmentDetails from '@salesforce/apex/shipmentTrackerController.showShipmentDetails';

export default class ShipmentTracker extends LightningElement {

    @api recordId;
    trackingStatus = "";
    error;
    
    // Doint the callout from apex using the imperative way
    handleBtnClick(event){
        showShipmentDetails({ recId: this.recordId })
		.then(result => {
			this.trackingStatus = result;
			
		})
		.catch(error => {
			this.error = error;
			
		})
    } 

   
}
