# lambdaFnAWSCli
This project customize the email message of Cognito for `Forgot Password` action using Power Shell and AWS CLI to publish and update the code on AWS.

* Instructions

1. Replace the placeholder '[YOUR_POOL_ID]' in index.js file.
2. To publish(create) run [publish](./publish_lambda_function.ps1)
3. Change --region, --function-name and --role values to your desired values. 
4. To publish(update) run [update](./update_lambda_function.ps1)
5. Change --function-name value to your desired value. 
6. In your Cognito General Settings/Triggers/Custom message, choose this lambda function and Save!

* References
1. [View all trigger sources here](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-lambda-trigger-syntax-shared.html)

2. [More examples here](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-lambda-trigger-examples.html#aws-lambda-triggers-custom-message-example)
