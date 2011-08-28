class AddDetailsToPrayers < ActiveRecord::Migration
  def self.up
    add_column :prayers, :email, :string
    add_column :prayers, :sex, :string
    add_column :prayers, :age, :integer
    add_column :prayers, :prayer_type, :string
  end

  def self.down
    remove_column :prayers, :prayer_type
    remove_column :prayers, :age
    remove_column :prayers, :sex
    remove_column :prayers, :email
  end
end
