require 'test_helper'

class ReadableTimeTest < Test::Unit::TestCase

  context "Describing how long ago an event was" do

    should "be just now" do
      assert_equal('Just now', ReadableTime.relative(Time.new))
    end

    should "be a second ago" do
      assert_equal('A sec ago', ReadableTime.relative(Time.new-1))
    end

    should "be seconds ago" do
      assert_equal('2 secs ago', ReadableTime.relative(Time.new-2))
      assert_equal('59 secs ago', ReadableTime.relative(Time.new-59))
    end

    should "be a minute ago" do
      assert_equal("A min ago", ReadableTime.relative(Time.new-60))
      assert_equal("A min ago", ReadableTime.relative(Time.new-119))
    end

    should "be minutes ago" do
     assert_equal("2 mins ago", ReadableTime.relative(Time.new-120))
     assert_equal("59 mins ago", ReadableTime.relative(Time.new-3540))
    end

    should "be an hour ago" do
     assert_equal("An hour ago", ReadableTime.relative(Time.new-3541))
     assert_equal("An hour ago", ReadableTime.relative(Time.new-7100))
    end

    should "be hours ago" do
      assert_equal("2 hours ago", ReadableTime.relative(Time.new-7101))
      assert_equal("23 hours ago", ReadableTime.relative(Time.new-82800))
    end

    should "be a day ago" do
      assert_equal("A day ago", ReadableTime.relative(Time.new-82801))
      assert_equal("A day ago", ReadableTime.relative(Time.new-172000))
    end

    should "be days ago" do
      assert_equal("2 days ago", ReadableTime.relative(Time.new-172001))
      assert_equal("6 days ago", ReadableTime.relative(Time.new-518400))
    end

    should "be a week ago" do
      assert_equal("A week ago", ReadableTime.relative(Time.new-518401))
      assert_equal("A week ago", ReadableTime.relative(Time.new-1036800))
    end

    should "be weeks ago" do
      assert_equal("2 weeks ago", ReadableTime.relative(Time.new-1036801))
    end

  end

end
