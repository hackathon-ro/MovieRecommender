require 'test/unit'
require './MovieRecommender.rb'

class TestUserModel < Test::Unit::TestCase
  def test_that_it_responds_to_ratings
    assert_respond_to( User.new, :ratings, failure_message = "It does not traverse the foreign key relationship." )
  end
end

class TestMovieModel < Test::Unit::TestCase
end

class TestRatingModel < Test::Unit::TestCase
end

