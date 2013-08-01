require 'aws-sdk'

AWS.config(
	:access_key_id => 'YOUR_ACCESS_KEY_ID',
	:secret_access_key => 'YOUR_SECRET_ACCESS_KEY'
)

s3 = AWS::S3.new
s3.buckets.create('UNIQ_BUCKET_NAME')

s3.buckets.collect(&:name).each do |bucket|
	p bucket
end
