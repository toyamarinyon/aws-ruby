require 'aws-sdk'

ec2 = AWS::EC2.new
# ec2.instances.first.delete

# ec2.key_pairs['test_keys'].delete
# key = ec2.key_pairs.create('test_keys')
# p key
# p key.private_key

sg = ec2.security_groups.first
sg.authorize_ingress(:tcp, 22)
