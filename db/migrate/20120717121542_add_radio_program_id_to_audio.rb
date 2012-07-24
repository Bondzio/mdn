class AddRadioProgramIdToAudio < ActiveRecord::Migration
  def self.up
    add_column :audios, :radio_program_id, :integer
  end

  def self.down
    remove_column :audios, :radio_program_id
  end
end
