Remove-Item '.\CustomMessageCognitoForgotPass\*.zip'
Compress-Archive -Path '.\CustomMessageCognitoForgotPass\*' -CompressionLevel Optimal -DestinationPath ".\CustomMessageCognitoForgotPass\lambdaAWSpackage.zip" -Force
aws lambda update-function-code --function-name 'CustomMessageCognitoForgotPass' --zip-file fileb://CustomMessageCognitoForgotPass\lambdaAWSpackage.zip