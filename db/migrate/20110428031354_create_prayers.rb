class CreatePrayers < ActiveRecord::Migration
  def self.up
    create_table :prayers do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.text :request
      t.boolean :moderated

      t.timestamps
    end
  end

  def self.down
    drop_table :prayers
  end
end
