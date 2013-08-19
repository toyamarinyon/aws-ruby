require 'aws-sdk'

# AWS.config(
# 	:access_key_id => 'AKIAJ4TTSXANZIJCLBEA',
# 	:secret_access_key => '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'
# )

s3 = AWS::S3.new
#s3.buckets.create('UNIQ_BUCKET_NAME')

s3.buckets.collect(&:name).each do |bucket|
	p bucket
end
