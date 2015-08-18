require 'test_helper'
require 'pry'

class MuppetTest < ActiveSupport::TestCase
  setup do
    @muppet = Muppet.new(name: "kermit", image_url:"kermit.com/images/1.png")
  end

  test "muppet does not save without a name" do
    @muppet.name = nil
    # binding.pry
    # unless test result == false, test will not pass
    assert_not @muppet.save, "Test fails because Muppet saved without name"
  end

  test "muppet does not save without an image_url" do
    @muppet.image_url = nil
    # binding.pry
    # unless test result == false, test will not pass
    assert_not @muppet.save, "Test fails because Muppet saved without image_url"
  end

  test "muppet does save with valid input" do
    assert @muppet.save
  end

  # test "test not finished" do
  #   flunk("I haven't written this test")
  # end
end
