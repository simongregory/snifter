module TwitSniff
  class Sniffer
    attr_reader :topic, :topic_fails

    def initialize(client, topic)
      @client = client

      @topic = topic
      @topic_fails = '### fail OR problem OR issue OR error OR slow OR buffer -"no problem"'.sub('###', topic)
    end

    def mentions
      @client.search(@topic, :count => 100).results
    end

    def fails
      @client.search(@topic_fails, :count => 100).results
    end

    def fails_in_last_hour
      hour_ago = Time.new - 360
      fails.reject { |tweet| tweet.created_at < hour_ago }
    end
  end
end
