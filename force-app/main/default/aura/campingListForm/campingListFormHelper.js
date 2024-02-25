({
	createItem : function(component, item) {
		compEvent = component.getEvent("addItem");
        compEvent.setParams({"item" : item});
        compEvent.fire();
        component.set("v.newItem", {'sobjectType' : 'Camping_Item__c',
							'Name' : '',
							'Quantity__c' : 0,
                           'Price__c' : 0,
							'Packed__c' : false}); 
	}
})