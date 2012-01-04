class CreateGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :gallery_images do |t|
      t.text :image_desc
      t.string :filename
      t.integer :gallery_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gallery_images
  end
end
