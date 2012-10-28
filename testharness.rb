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
  def test_that_it_checks_for_presence_of_name
    m = Movie.new
    m.valid?
    assert( m.errors.messages.has_key?(:name), failure_message = "It does not check for the presence of attribute name." )
  end
  def test_that_it_responds_to_with_ratings_of_user
    assert_respond_to( Movie, :with_ratings_of_user, failure_message = "It does not respond to with_ratings_of_user." )
  end
  def test_correct_behavior_of_with_ratings_of_user
    u = User.create(:nickname => "uuu_user")
    m1 = Movie.create(:name => "mmm_movie_1")
    m2 = Movie.create(:name => "mmm_movie_2")
    r = Rating.create(:user => u, :movie => m1, :rating => 5)
    is_it_five = Movie.with_ratings_of_user(u.id).find { |m| m.id == m1.id }.rating == 5
    is_it_nil = Movie.with_ratings_of_user(u.id).find { |m| m.id == m2.id }.rating.nil?
    r.destroy
    u.destroy
    m1.destroy
    m2.destroy
    assert( is_it_five, failure_message = "It is not five as expected." )
    assert( is_it_nil, failure_message = "It is not nil as expected." )
  end
end

class TestRatingModel < Test::Unit::TestCase
  def test_that_it_responds_to_user
    assert_respond_to( Rating.new, :user, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_responds_to_movie
    assert_respond_to( Rating.new, :movie, failure_message = "It does not traverse the foreign key relationship." )
  end
  def test_that_it_checks_for_presence_of_rating
    r = Rating.new
    r.valid?
    assert( r.errors.messages.has_key?(:rating), failure_message = "It does not check for the presence of attribute rating." )
  end
  def test_that_it_checks_for_presence_of_user_id
    r = Rating.new
    r.valid?
    assert( r.errors.messages.has_key?(:user_id), failure_message = "It does not check for the presence of user_id." )
  end
  def test_that_it_checks_for_presence_of_movie_id
    r = Rating.new
    r.valid?
    assert( r.errors.messages.has_key?(:movie_id), failure_message = "It does not check for the presence of movie_id." )
  end
  def test_that_it_checks_that_the_rating_is_an_integer
    r = Rating.new(:rating => 1.5)
    r.valid?
    assert( r.errors.messages.has_key?(:rating), failure_message = "It does not check that the rating is an integer." )
  end
  def test_that_it_checks_that_the_rating_is_gteq_1
    r = Rating.new(:rating => 0)
    r.valid?
    assert( r.errors.messages.has_key?(:rating), failure_message = "It does not check that the rating is greater than or equal to 1." )
  end
  def test_that_it_checks_that_the_rating_is_lteq_5
    r = Rating.new(:rating => 6)
    r.valid?
    assert( r.errors.messages.has_key?(:rating), failure_message = "It does not check that the rating is less than or equal to 5." )
  end
end

