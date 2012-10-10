require 'test_helper'

class SnifferTest < Test::Unit::TestCase

  context "A sniffer" do

    setup do
      @cli = TwitSniff::CLI.new
      @real_out = $stdout
      $stdout = StringIO.new
    end

    teardown do
      @cli = nil
      $stdout = @real_out
    end

    should "outputs a list of tweets" do
      tweet = mock()
      tweet.expects(:from_user).returns('AdaLovelace').once
      tweet.expects(:created_at).returns(Time.new).once
      tweet.expects(:retweet_count).returns(0).once
      tweet.expects(:text).returns('Just whipped up Twitter on the old analytical engine').once

      @cli.echo [tweet]

      assert_match(/AdaLovelace/, $stdout.string)
      assert_match(/Just now/, $stdout.string)
      assert_match(/0/, $stdout.string)
      assert_match(/Just whipped/, $stdout.string)
    end
  end
end
