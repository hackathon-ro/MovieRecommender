class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.references :user
      t.references :movie
      t.integer    :rating
    end
    add_index :ratings, :user_id
    add_index :ratings, :movie_id
    add_index :ratings, [:user_id, :movie_id], :unique => true
  end
end
