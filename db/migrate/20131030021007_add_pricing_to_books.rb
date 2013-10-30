class AddPricingToBooks < ActiveRecord::Migration
  def change
    add_column :books, :retail_price, :string
    add_column :books, :dsc_price, :string
  end
end
