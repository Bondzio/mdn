class AddAttachmentProgramToRadio < ActiveRecord::Migration
  def self.up
    add_column :radios, :program_file_name, :string
    add_column :radios, :program_content_type, :string
    add_column :radios, :program_file_size, :integer
    add_column :radios, :program_updated_at, :datetime
  end

  def self.down
    remove_column :radios, :program_file_name
    remove_column :radios, :program_content_type
    remove_column :radios, :program_file_size
    remove_column :radios, :program_updated_at
  end
end
