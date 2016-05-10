require 'test_helper'

class ToyTest < ActiveSupport::TestCase
  test "test is valid" do
  	@toy = toys(:one)
    assert(@toy.valid?, "This should be valid under normal circcumstances")
  end

  test "test should fail if name is not present" do
  	@toy = toys(:one)
  	@toy.name = nil
  	refute(@toy.valid?, "This should be invalid without a name")
	end

  test "test should fail if pieces is not present" do
  	@toy = toys(:one)
  	@toy.pieces = nil
  	refute(@toy.valid?, "This should be invalid without pieces")
	end
end
