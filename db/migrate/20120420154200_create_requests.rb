class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :church
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.text :request

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
