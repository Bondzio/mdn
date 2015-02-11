class AddCellphoneAndCompletedToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :cellphone, :string
    add_column :requests, :completed, :boolean
  end
end
