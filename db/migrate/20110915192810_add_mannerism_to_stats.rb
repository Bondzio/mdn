class AddMannerismToStats < ActiveRecord::Migration
  def self.up
    add_column :stats, :mannerism, :text
  end

  def self.down
    remove_column :stats, :mannerism
  end
end
