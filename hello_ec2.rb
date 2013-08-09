require 'aws-sdk'

AWS.config(
	:access_key_id => 'AKIAJ4TTSXANZIJCLBEA',
	:secret_access_key => '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'
)

ec2 = AWS::EC2.new

ec2.instances.create(:image_id => "ami-173fbf16", :instance_type => "t1.micro")
