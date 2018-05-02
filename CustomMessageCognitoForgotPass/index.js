exports.handler = function(event, context) {
        
    if(event.userPoolId === "[YOUR_POOL_ID]") {
        // Identify why was this function invoked
        if(event.triggerSource === "CustomMessage_ForgotPassword") {
            
            // Ensure that your message contains event.request.codeParameter. This is the placeholder for code that will be sent
            event.response.emailSubject = "Custom Message - Welcome to the service";
            event.response.emailMessage = "Hello "+ event.userName +".    </br>"     + event.request.codeParameter + " is your verification code.";
        }
        // Create custom message for other events
    }
    // Customize messages for other user pools

    //

    // Return result to Cognito
    context.done(null, event);
};
