class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.string :author
      t.text :description
      t.text :subtitle
      t.string :image

      t.timestamps
    end
  end
end
