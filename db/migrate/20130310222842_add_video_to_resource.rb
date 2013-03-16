class AddVideoToResource < ActiveRecord::Migration
  def change
    add_column :resources, :video, :string
  end
end
