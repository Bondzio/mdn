class AddFeaturedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :featured, :boolean
  end
end
