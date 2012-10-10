require 'test_helper'

class AppTest < Test::Unit::TestCase
  context "A Snifter setup" do

    should "configure the Application with a consumer key and secret" do
      credentials = {'consumer_key' => 'skeleton', 'consumer_secret' => 'closet'}

      config = mock()
      config.expects(:consumer_key=).with('skeleton').once
      config.expects(:consumer_secret=).with('closet').once

      service = mock()
      service.stubs(:configure).yields(config)

      Snifter.store_consumer(credentials, service)
    end

    should "create clients with user account credentials" do
      credentials = {'access_token' => '', 'access_token_secret' => '', }

      assert_not_nil(Snifter.make_client(credentials))
    end
  end
end
