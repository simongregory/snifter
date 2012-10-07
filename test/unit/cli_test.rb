require 'test_helper'

class SnifferTest < Test::Unit::TestCase

  context "A sniffer" do

    setup do
      @cli = TwitSniff::CLI.new
    end

    teardown do
      @cli = nil
    end

    should "output a list of tweets in columns" do
      # Stub out one or two tweets with the following properties
      #
      # t.from_user
      # t.created_at
      # t.text
      #
      # Pass a StringIO object in, then test the output is as expected
    end
  end
end
