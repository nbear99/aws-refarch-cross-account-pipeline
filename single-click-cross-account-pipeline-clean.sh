ToolsAccount=xxxxxxxxxxxx
ToolsAccountProfile=prod
TestAccount=xxxxxxxxxxxx
TestAccountProfile=test

DevAccount=$ToolsAccount
DevAccountProfile=$ToolsAccountProfile
ProdAccount=$ToolsAccount
ProdAccountProfile=$ToolsAccountProfile

aws cloudformation delete-stack --stack-name sample-lambda-pipeline --profile $ToolsAccountProfile
aws cloudformation delete-stack --stack-name toolsacct-codepipeline-cloudformation-role --profile $ProdAccountProfile
aws cloudformation delete-stack --stack-name toolsacct-codepipeline-cloudformation-role --profile $TestAccountProfile
aws cloudformation delete-stack --stack-name toolsacct-codepipeline-role --profile $DevAccountProfile
aws cloudformation delete-stack --stack-name pre-reqs --profile $ToolsAccountProfile


