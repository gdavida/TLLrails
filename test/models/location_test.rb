require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test "test is valid" do
  	@location = locations(:one)
    assert(@location.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if name is not present" do
  	@location = locations(:one)
  	@location.branch_name = nil
  	refute(@location.valid?, "This should be invalid without a branch name")
	end

  test "test should fail if contact name is not present" do
  	@location = locations(:one)
  	@location.contact_name = nil
  	refute(@location.valid?, "This should be invalid without contact name")
	end
end
