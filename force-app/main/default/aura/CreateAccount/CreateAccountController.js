({
	createAccount : function(component, event, helper) {
		var newAcc = component.get("v.newAccount");
        if($A.util.isEmpty(newAcc.Name)){
            alert("Name is required !"+newAcc.Name);
            return;
        }
        var action = component.get("c.saveAccount");
        
        //Setting the Apex Parameter
        action.setParams({
            acc : newAcc
        });
        
        //Setting the Callback
        action.setCallback(this,function(a){
            //get the response state
            var state = a.getState();
            
            //check if result is successfull
            if(state == "SUCCESS"){
                //Reset Form
                var newAccount = {'sobjectType': 'Account',
                                    'Name': ''
                                   };
                //resetting the Values in the form
                component.set("v.newAccount",newAccount);
                alert('Record is Created Successfully');
            } else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        
		//adds the server-side action to the queue        
        $A.enqueueAction(action);

	}
})