require 'test_helper'

class ContestTest < ActiveSupport::TestCase
  test "should not save empty contest form" do
    contest = Contest.new
    assert_not contest.save
  end
  test "should not save contest with slogan length > 50" do
    contest = Contest.new(last_name: 'John', first_name: 'Dan', email: 'winsjansen@.com', slogan: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    assert_not contest.save
  end
  test "should not save submission with empty email" do
    contest = Contest.new(last_name: 'John', first_name: 'Dan', email: '', slogan: 'Lion')
    assert_not contest.save
  end
end
