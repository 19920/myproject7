require 'test_helper'

class ContestsControllerTest < ActionDispatch::IntegrationTest
  test "should add new contest " do
    contest = {:contest => {:first_name => 'Kadahizi', :last_name => 'lofstrand', :Email => 'lofstrand@yahoo.se', :slogan => 'lion' }}
    post '/contests', :params => contest
    assert_response 200
end
test "should return error with empty params" do
  contest = {:contest => {:first_name => '', :last_name => '', :Email => '', :slogan => '' }}
    post '/contests', :params => contest
    assert_response 400
  end
  test "should turns error with empty email " do
    contest = {:contest => {:first_name => 'Kadahizi', :last_name => 'baptiste', :Email => '', :slogan => 'lion' }}
    post '/contests', :params => contest
    assert_response 400
end
test "should not save contest with slogan length > 50" do
    @contest = Contest.new(first_name: 'John', last_name: 'Dan', Email: 'john@bap.com', slogan: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ABCDEFGHIJKLMNOPQRSTUVWXYZ')
    assert_not contest.save
  end
end
