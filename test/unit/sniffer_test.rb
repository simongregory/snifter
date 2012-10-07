require 'test_helper'

class SnifferTest < Test::Unit::TestCase

  context "A sniffer" do

    setup do
      @sniffer = TwitSniff::Sniffer.new(
                  credentials['access_token'],
                  credentials['access_token_secret'],
                  'iplayer')

      @cli = TwitSniff::CLI.new
    end

    teardown do
      @sniffer = nil
    end

    should "have a topic to search for" do
      assert_equal('iplayer', @sniffer.topic)
    end

    should "have a failure topic to search for" do
      assert_equal('iplayer fail OR problem OR issue OR error -"no problem"', @sniffer.topic_fails)
    end

    should "Discover tweets mentioning the search term" do
      @cli.echo @sniffer.mentions
    end

    should "Discover how many tweets in the last hour have mentioned issues" do
      tweets = @sniffer.fails_in_last_hour

      if tweets.empty?
        puts 'No recent failures'
      else
        @cli.echo tweets
      end
    end
  end
end

