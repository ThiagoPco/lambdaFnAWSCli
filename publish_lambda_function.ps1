Remove-Item '.\CustomMessageCognitoForgotPass\*.zip'
Compress-Archive -Path '.\CustomMessageCognitoForgotPass\*' -CompressionLevel Optimal -DestinationPath ".\CustomMessageCognitoForgotPass\lambdaAWSpackage.zip" -Force

aws lambda create-function --region us-east-2 --function-name 'CustomMessageCognitoForgotPass' --zip-file fileb://CustomMessageCognitoForgotPass\lambdaAWSpackage.zip --role arn:aws:iam::319217556574:role/service-role/MyRole --handler index.handler --runtime nodejs8.10