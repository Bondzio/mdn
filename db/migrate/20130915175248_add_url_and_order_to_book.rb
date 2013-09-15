class AddUrlAndOrderToBook < ActiveRecord::Migration
  def change
    add_column :books, :url, :string
    add_column :books, :order, :integer
  end
end
