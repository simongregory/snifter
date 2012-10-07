require 'test_helper'

class TwitSniffTest < Test::Unit::TestCase

  context "A TwitSniff" do

    setup do
      @sniff = TwitSniff::IPlayer.new(
                  credentials['consumer_key'],
                  credentials['consumer_secret'],
                  credentials['access_token'],
                  credentials['access_token_secret'])
    end

    teardown do
      @sniff = nil
    end

    should "look up iplayers location" do
      assert_equal('', @sniff.location)
    end

    should "find tweets mentioning iplayer" do
      tweets = @sniff.mentions
      assert_not_nil(tweets)
    end

    should "never find tweets metioning iplayer fail" do
      tweets = @sniff.fails

      tweets.each { |t| puts "#{t.from_user}: #{t.text}" }

      assert_nil(tweets)
    end
  end
end

