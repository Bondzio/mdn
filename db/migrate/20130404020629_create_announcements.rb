class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :date
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
