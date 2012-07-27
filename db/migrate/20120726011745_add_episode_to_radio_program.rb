class AddEpisodeToRadioProgram < ActiveRecord::Migration
  def self.up
    add_column :radio_programs, :episode, :integer
  end

  def self.down
    remove_column :radio_programs, :episode
  end
end
