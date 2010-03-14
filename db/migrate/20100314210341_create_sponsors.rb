class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :firstname, :limit => 50
      t.string :lastname, :limit => 50
      t.string :street_address1, :limit => 50
      t.string :street_address2, :limit => 50
      t.string :city, :limit => 50
      t.string :state, :limit => 2
      t.decimal :zipcode, :precision => 5, :scale => 0
      t.string :phone1, :limit => 15
      t.string :phone2, :limit => 15
      t.string :email1, :limit => 50
      t.string :email2, :limit => 50
      t.boolean :active, :default => false
      t.boolean :new, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
