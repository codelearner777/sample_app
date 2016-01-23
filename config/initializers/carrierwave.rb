if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIBYBILOJ6WRVIYYQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end