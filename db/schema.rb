# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121027034927) do

  create_table "address_translations", :force => true do |t|
    t.integer  "address_id"
    t.string   "locale"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "address_translations", ["address_id"], :name => "index_address_translations_on_address_id"
  add_index "address_translations", ["locale"], :name => "index_address_translations_on_locale"

  create_table "addresses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "username",        :limit => 25
    t.string   "email",           :limit => 100, :default => "", :null => false
    t.string   "hashed_password", :limit => 40
    t.string   "salt",            :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["username"], :name => "index_admin_users_on_username"

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "howdowedo_translations", :force => true do |t|
    t.integer  "howdowedo_id"
    t.string   "locale"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "howdowedo_translations", ["howdowedo_id"], :name => "index_howdowedo_translations_on_howdowedo_id"
  add_index "howdowedo_translations", ["locale"], :name => "index_howdowedo_translations_on_locale"

  create_table "howdowedos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", :force => true do |t|
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "team_translations", :force => true do |t|
    t.integer  "team_id"
    t.string   "locale"
    t.text     "description"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_translations", ["locale"], :name => "index_team_translations_on_locale"
  add_index "team_translations", ["team_id"], :name => "index_team_translations_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "whatdowedo_translations", :force => true do |t|
    t.integer  "whatdowedo_id"
    t.string   "locale"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "whatdowedo_translations", ["locale"], :name => "index_whatdowedo_translations_on_locale"
  add_index "whatdowedo_translations", ["whatdowedo_id"], :name => "index_whatdowedo_translations_on_whatdowedo_id"

  create_table "whatdowedos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whoweare_translations", :force => true do |t|
    t.integer  "whoweare_id"
    t.string   "locale"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "whoweare_translations", ["locale"], :name => "index_whoweare_translations_on_locale"
  add_index "whoweare_translations", ["whoweare_id"], :name => "index_whoweare_translations_on_whoweare_id"

  create_table "whoweares", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
