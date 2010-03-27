# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100327013255) do

  create_table "families", :force => true do |t|
    t.string   "parent_names",       :limit => 50,                    :null => false
    t.boolean  "active",                           :default => true
    t.boolean  "sponsored",                        :default => false
    t.decimal  "monthly_need"
    t.datetime "year_joined"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "firstname",       :limit => 50
    t.string   "lastname",        :limit => 50
    t.string   "street_address1", :limit => 50
    t.string   "street_address2", :limit => 50
    t.string   "city",            :limit => 50
    t.string   "state",           :limit => 2
    t.integer  "zipcode",         :limit => 5,  :precision => 5, :scale => 0
    t.string   "phone1",          :limit => 15
    t.string   "phone2",          :limit => 15
    t.string   "email1",          :limit => 50
    t.string   "email2",          :limit => 50
    t.boolean  "active",                                                      :default => false
    t.boolean  "new",                                                         :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
