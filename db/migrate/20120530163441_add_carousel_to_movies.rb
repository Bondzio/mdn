class AddCarouselToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :carousel, :boolean
  end

  def self.down
    remove_column :movies, :carousel
  end
end
