class AddAudioToResources < ActiveRecord::Migration
  def change
    add_column :resources, :audio, :string
  end
end
