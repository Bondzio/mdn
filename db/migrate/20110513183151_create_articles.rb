class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.text :title
      t.text :author
      t.text :content
      t.boolean :moderated
      t.integer :space_id

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
