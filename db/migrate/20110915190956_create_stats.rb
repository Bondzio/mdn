class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.text :title
      t.text :stat
      t.text :content
      t.string :topic
      t.text :source
      t.boolean :visible

      t.timestamps
    end
  end

  def self.down
    drop_table :stats
  end
end
