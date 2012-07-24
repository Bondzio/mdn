class AddSpeakerToRadioPrograms < ActiveRecord::Migration
  def self.up
    add_column :radio_programs, :speaker, :string
  end

  def self.down
    remove_column :radio_programs, :speaker
  end
end
