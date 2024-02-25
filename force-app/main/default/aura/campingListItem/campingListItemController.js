({
	packItem : function(component, event, helper) {
		var btnPacked = event.getSource();
        
        component.set("v.item.Packed__c", true);
        btnPacked.set("v.disabled" , true);
	}
})