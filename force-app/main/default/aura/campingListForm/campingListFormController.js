({
	clickCreateItem : function(component, event, helper) {
        var validItem = component.find('campingform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validItem){
        	var newItem = component.get('v.newItem');
            console.log("Create Item: " + JSON.stringify(newItem));
            
            helper.createItem(component, newItem);
            
            /* var items = component.get('v.items');
            items.push(newItem);
            
            console.log("Items : " + JSON.stringify(items));
            component.set('v.items', items);
            
            component.set("v.newItem", {'sobjectType' : 'Camping_Item__c',
							'Name' : '',
							'Quantity__c' : 0,
                           'Price__c' : 0,
							'Packed__c' : false}); */
		}
		
	}
})