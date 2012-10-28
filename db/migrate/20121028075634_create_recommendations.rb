class CreateRecommendations < ActiveRecord::Migration
  def self.up
    stmt = "CREATE TABLE recommendations " +
           "(input  INTEGER NOT NULL, " +
            "output INTEGER NOT NULL, " +
            "weight INTEGER NOT NULL)"
    ActiveRecord::Base.connection.execute(stmt)
    stmt = "CREATE INDEX recommendations_input ON recommendations (input)"
    ActiveRecord::Base.connection.execute(stmt)
  end
end

