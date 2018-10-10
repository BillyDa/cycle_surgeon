require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create
    # @user.email = 'lol@lol.com'
    # @user.username = 'bikes'
  end

  test "validates user presence" do
    assert_not @user.save
  end

  test "user has username and password no email" do
    @user.username = 'fourcharacters'
    @user.password = 'abc123'
    assert_not @user.save
  end

  test "user has username and email no password" do
    @user.username = 'fourcharacters'
    @user.email = 'r@r.com'
    assert_not @user.save
  end

  test "user has all fields" do
    @user.username = 'fourcharacters'
    @user.email = 'r@r.com'
    @user.password = 'abc123'
    assert @user.save
  end

  test "validation length username" do
    @user.username = "one"
    @user.email = "r@r.com"
    @user.password = 'abc123'
    refute @user.save
  end

  test "validation length email" do
    @user.username = "four"
    @user.email = "r@r"
    @user.password = "abc123"
    refute @user.save
  end

  

  test "username is unique" do
    @user.password = "abc123"
    @user.email = "r@r.com"
    @user.username = "sur1"
    refute @user.save

  end
end
