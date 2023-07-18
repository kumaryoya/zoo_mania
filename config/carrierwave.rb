require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage :fog
  config.fog_provider = 'fog/aws'
  config.fog_directory  = 'zoomania'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/zoomania"
    region: ENV['AWS_DEFAULT_REGION'],
    path_style: true
  }
end
