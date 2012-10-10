require 'test_helper'

class SnifferTest < Test::Unit::TestCase

  context "A sniffer" do

    setup do
      @client = mock()
      @sniffer = TwitSniff::Sniffer.new(@client, 'lovelace')
    end

    teardown do
      @sniffer = nil
    end

    should "have a product name to search for" do
      assert_equal('lovelace', @sniffer.topic)
    end

    should "have a failure topic to search for" do
      assert_equal('lovelace fail OR problem OR issue OR error OR slow OR buffer -"no problem"',
                   @sniffer.topic_fails)
    end

    should "Discover tweets mentioning the product" do
      @client.expects(:search).with('lovelace', {:count => 100}).returns(stub(:results => [])).once
      @sniffer.mentions
    end

    should "Discover tweets mentioning the product and terms of failure" do
      @client.expects(:search).returns(stub(:results => [])).once
      @sniffer.fails
    end

    should "Discover how many tweets in the last hour have mentioned issues" do
      @client.expects(:search).returns(stub(:results => [])).once
      @sniffer.fails_in_last_hour
    end
  end
end
