module TwitSniff

  class IPlayer
    def initialize(ck, cs, ot, ots)
      Twitter.configure do |config|
        config.consumer_key = ck
        config.consumer_secret = cs
        config.oauth_token = ot
        config.oauth_token_secret = ots
      end
    end

    def location
      Twitter.user("bbciplayer").location
    end

    def mentions
      Twitter.search("iplayer", :count => 20).results
    end

    def fails
      Twitter.search("iplayer fail", :count => 100).results
    end
  end

end

