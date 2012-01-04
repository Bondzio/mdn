class AddFeaturedToGalleryImages < ActiveRecord::Migration
  def self.up
    add_column :gallery_images, :featured, :boolean
  end

  def self.down
    remove_column :gallery_images, :featured
  end
end
