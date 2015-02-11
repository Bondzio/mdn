class AddRoleToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :leader, :boolean
  end
end
