class AddPhotoUploads < ActiveRecord::Migration
  def self.up
		remove_column :families, :picture_url
		add_column    :families, :photo_file_name,    :string
    add_column    :families, :photo_content_type, :string
    add_column    :families, :photo_file_size,    :integer
  end

  def self.down
		add_column    :families, :picture_url
		remove_column :families, :photo_file_name
    remove_column :families, :photo_content_type
    remove_column :families, :photo_file_size
  end
end
