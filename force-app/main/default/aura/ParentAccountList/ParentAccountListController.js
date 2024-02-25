({
	handleComponentEvent : function(component, event, helper) {
        alert("Handle component event...");
        
        var acc = event.getParam("AccRecord");
        var accList = component.get("v.accList");
        accList.push(acc);
        component.set("v.accList", accList);
	}
})