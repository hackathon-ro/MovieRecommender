require 'test/unit'
require './MovieRecommender.rb'

class TestUserModel < Test::Unit::TestCase
  def test_that_it_responds_to_ratings
    assert_respond_to( User.new, :ratings, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_responds_to_movies
    assert_respond_to( User.new, :movies, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_checks_for_presence_of_nickname
    u = User.new
    u.valid?
    assert( u.errors.messages.has_key?(:nickname), failure_message = "It does not check for the presence of attribute nickname." )
  end
end

class TestMovieModel < Test::Unit::TestCase
  def test_that_it_responds_to_ratings
    assert_respond_to( Movie.new, :ratings, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_responds_to_users
    assert_respond_to( Movie.new, :users, failure_message = "It does not traverse the foreign key relationship." )
  end
end

class TestRatingModel < Test::Unit::TestCase
  def test_that_it_responds_to_user
    assert_respond_to( Rating.new, :user, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_responds_to_movie
    assert_respond_to( Rating.new, :movie, failure_message = "It does not traverse the foreign key relationship." )
  end
end

