require 'test_helper'

class BoxTest < ActiveSupport::TestCase
  test "test is valid" do
  	@box = boxes(:one)
    assert(@box.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if name is not present" do
  	@box = boxes(:one)
  	@box.name = nil
  	refute(@box.valid?, "This should be invalid without a name")
	end
end
