class CreateFamilies < ActiveRecord::Migration
  def self.up
    create_table :families do |t|
      t.string :parent_names, :null => false, :limit => 50
      t.string :picture_url, :limit => 100
      t.boolean :active, :default => true
      t.boolean :sponsored, :default => false
      t.decimal :monthly_need, :scale => 2, :precision => 5
      t.datetime :year_joined
      t.timestamps
    end
  end

  def self.down
    drop_table :families
  end
end
