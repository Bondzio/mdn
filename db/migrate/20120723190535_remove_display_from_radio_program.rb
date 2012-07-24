class RemoveDisplayFromRadioProgram < ActiveRecord::Migration
  def self.up
    remove_column :radio_programs, :display
  end

  def self.down
    add_column :radio_programs, :display, :boolean
  end
end
