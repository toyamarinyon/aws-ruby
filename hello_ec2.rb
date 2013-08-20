require 'aws-sdk'

ec2 = AWS::EC2.new

ec2.key_pairs['tamurine_ec2'].delete
keypair = ec2.key_pairs.create('tamurine_ec2')
instance = ec2.instances.create(
	:image_id => "ami-173fbf16", 
	:instance_type => "t1.micro",
	:key_pair => keypair,
	:security_group_ids => 'sg-0cf01463',
	:subnet => 'subnet-818837e9'
)

sleep 10 while instance.status == :pending
puts "Launched instance #{instance.id}, status: #{instance.status}"

File.open(File.expand_path('~/.ssh/tamurine_ec2.pam'), 'w', 0600) do |file|
	file.write(keypair.private_key)
end
