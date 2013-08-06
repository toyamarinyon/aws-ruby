require 'aws-sdk'

ec2 = AWS::EC2.new

ec2.intances.create(:image_id => "ami-173fbf16")
