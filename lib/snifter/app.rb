module Snifter
  def self.store_consumer(credentials, service=Twitter)
    service.configure do |config|
      config.consumer_key = credentials['consumer_key']
      config.consumer_secret = credentials['consumer_secret']
    end
  end

  def self.make_client(credentials)
    Twitter::Client.new(:oauth_token => credentials['access_token'],
                        :oauth_token_secret => credentials['access_token_secret'])
  end
end
