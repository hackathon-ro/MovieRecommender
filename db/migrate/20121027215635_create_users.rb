class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :nickname
    end
  end
end

