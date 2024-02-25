({
	handleChildComponentEvent : function(component, event, helper) {
		var fullnameReceived = event.getParam("fullname");
        alert("fullnameReceived "+fullnameReceived);
        component.set("v.fullname", fullnameReceived);
	}
})