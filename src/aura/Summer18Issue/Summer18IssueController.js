({
	validatePercent : function(component, event, helper) {
        console.log('calling Validate');
        var value = event.getSource().get("v.value").replace("%", "");
        console.log('Value is ' + value);
        var auraid = event.getSource().getLocalId();
        console.log('auraId is : ' + auraid);
        var inputComponent = component.find(auraid);
        
        console.log('calling Validate for : ' + inputComponent);
        if((value > 5 || value < 0) || isNaN(value) || /\s/.test(value)){
            console.log('calling Validate - bad value');
            console.log('debug 01' + inputComponent.get("v.validity").valid);
            console.log('debug 02' + inputComponent.get("v.validity").badInput);
            console.log('debug 03' + inputComponent.get("v.messageWhenBadInput"));
            
            //var validity = inputComponent.get("v.validity");
            //console.log('type of validity' + typeof(validity) + '.Validatity is : ' + validity);
            

            //validity.badInput = true;
            //inputComponent.set("v.validity", {'valid':false});
            inputComponent.set("v.validity", {valid: false, badInput: true});
            //inputComponent.set("v.validity", {valid: false});

            //inputComponent.set("v.validity").badInput = true;
            inputComponent.set("v.messageWhenBadInput", "Value should be between 0% and 5%");
            console.log('calling Validate - bad value set');
            console.log('debug 11' + inputComponent.get("v.validity").valid);
            console.log('debug 12' + inputComponent.get("v.validity").badInput);
            console.log('debug 13' + inputComponent.get("v.messageWhenBadInput"));
        } else if (value == ''){
            console.log('calling Validate - missing value');
            inputComponent.set("v.validity", {valid: false, valueMissing: true});
            console.log('calling Validate - missing value set');
        } 
    },
    
    addPercentSign : function(component, event, helper) {
        var value = event.getSource().get("v.value");
        value = String(value);
        var auraid = event.getSource().getLocalId();
        var inputComponent = component.find(auraid);
        if(value.slice(-1) != '%' && !isNaN(value) && !/\s/.test(value) && value != '')
            inputComponent.set("v.value", value+'%');
    }
})