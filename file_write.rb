
File.open(File.expand_path('~/.ssh/tamurine_ec2.pam'), 'w', 0600) do |file|
	file.write('test text')
end
