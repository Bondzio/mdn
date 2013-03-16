class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.text :title
      t.text :subtitle
      t.text :description

      t.timestamps
    end
  end
end
