({
	createContact : function(component, event, helper) {
		var newAcc = component.get("v.newAccount");
        var action = component.get("c.saveAccount");
        action.setParams({
            "acc":newAcc
        });
        action.setCallback(this, function(a){
            var state = a.getState();
            alert("state "+state);
            if(state == "SUCCESS"){
                var name = a.getReturnValue();
                alert("Hello..."+name);
            }
        })
        $A.enqueueAction(action);
	}
    
})