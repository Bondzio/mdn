class CreateRadioPrograms < ActiveRecord::Migration
  def self.up
    create_table :radio_programs do |t|
      t.string :title
      t.text :description
      t.date :date
      t.boolean :featured
      t.boolean :display

      t.timestamps
    end
  end

  def self.down
    drop_table :radio_programs
  end
end
