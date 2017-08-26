require_relative "../lib/user"
require "minitest/autorun"

class UserTest < Minitest::Test
  def setup
    @user = User.new
  end

  def test_new_user_has_money
    assert_equal

  end

end
