class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
