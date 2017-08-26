require "minitest/autorun"
require_relative "../lib/user"

class UserTest < Minitest::Test
  def setup
    @user = User.new
  end

  def test_new_user_has_money
    user = User.new(100, 10)
    user.money.should eq(100)
  end

end
