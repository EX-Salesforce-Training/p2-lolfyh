({
	getResponse : function(component, event,helper) {
		var action = component.get("c.getPokemon");
        var value = component.get("v.input");
        action.setParams({"id" : value});
        action.setCallback(this, function(response) {
            var state = response.getState();
            
            if (state === "SUCCESS") {
                var returnValue = response.getReturnValue();
                //var name = returnValue.first_name;
                component.set("v.Name", returnValue.last_name +" "+ returnValue.first_name);
                component.set("v.Height", returnValue.height_feet +"'"+" "+ returnValue.height_inches);
				component.set("v.Position",returnValue.position)
                component.set("v.weight_pounds",returnValue.weight_pounds)
                component.set("v.team",returnValue.team.full_name)
              
                
               
             
              	
            }
        });
        $A.enqueueAction(action);

	}
})