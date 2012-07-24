class CreateRadios < ActiveRecord::Migration
  def self.up
    create_table :radios do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.string :speaker
      t.boolean :featured
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :radios
  end
end
