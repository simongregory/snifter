module TwitSniff
  def self.setup(ck, cs)
    Twitter.configure do |config|
      config.consumer_key = ck
      config.consumer_secret = cs
    end
  end
end