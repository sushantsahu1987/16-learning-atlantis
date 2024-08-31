# 16-learning-atlantis

### How to get AWS AMI List for aws_instance for us-west-2 region

- aws ec2 describe-images --region us-west-2 --owners amazon --filters "Name=name,Values=amzn2-ami-hvm-*" --query "Images[*].[ImageId,Name,Description]" --output table
  
