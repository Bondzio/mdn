class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.date :date
      t.string :speaker
      t.text :description
      t.string :url
      t.string :filename
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
