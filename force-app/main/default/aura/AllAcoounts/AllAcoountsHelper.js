({
	getAccountList : function(component, event) {
		var action = component.get("c.getAccountList");
        action.setCallback(this, function(a){
            component.set("v.accList", a.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})