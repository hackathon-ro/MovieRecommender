class CreateAugmentedMovies < ActiveRecord::Migration
  def self.up
    stmt = "CREATE VIEW " +
             "augmented_movies " +
           "AS " +
           "SELECT " +
             "movies.id, " +
             "movies.name, " +
             "ratings.user_id, " +
             "ratings.rating " +
           "FROM " +
             "movies, " +
             "ratings " +
           "WHERE " +
             "ratings.movie_id = movies.id"
    ActiveRecord::Base.connection.execute(stmt)
  end
end

