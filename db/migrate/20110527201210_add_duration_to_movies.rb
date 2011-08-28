class AddDurationToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :duration, :string
  end

  def self.down
    remove_column :movies, :duration
  end
end
