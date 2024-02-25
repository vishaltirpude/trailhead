({
	createAccount : function(component, event, helper) {
		var acnt = component.get("v.newAccount");
        alert("child controller.."+acnt.Name);
        
        var cmpEvent = component.getEvent("accEvent");
        cmpEvent.setParams({
            "AccRecord" : acnt });
        cmpEvent.fire();

	}
})