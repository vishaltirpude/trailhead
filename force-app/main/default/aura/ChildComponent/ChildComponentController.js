({
	concatString : function(component, event, helper) {
		var firstname = component.get('v.firstname');
        var lastname = component.get('v.lastname');
        var fullname = firstname +" "+lastname;
        alert("Full Name "+ fullname);
        component.set('v.fullname', fullname);
        
        var compEvent = component.getEvent("concatFullName");
        compEvent.setParams( { "fullname" : fullname } );
        compEvent.fire();
    }
})