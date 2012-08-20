class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :time
      t.string :venue
      t.string :location
      t.string :summary_title
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
