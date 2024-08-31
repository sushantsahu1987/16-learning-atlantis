# 16-learning-atlantis

### How to get AWS AMI List for aws_instance for us-west-2 region

- aws ec2 describe-images --region us-west-2 --owners amazon --filters "Name=name,Values=amzn2-ami-hvm-*" --query "Images[*].[ImageId,Name,Description]" --output table
  
### Configuration
- ngrok http 4141

### Environments
- REPO_ALLOWLIST="github.com/sushantsahu1987/16-learning-atlantis"
- USERNAME="sushantsahu1987"
- TOKEN="ghp_******"
- SECRET={genrate a random string for github webhook & atlantis server}
- URL={NGROK url}

### Run Atlantis server
atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST"
