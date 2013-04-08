# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130404020629) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "newfield"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "announcements", :force => true do |t|
    t.string   "title"
    t.string   "date"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "articles", :force => true do |t|
    t.text     "title"
    t.text     "author"
    t.text     "content"
    t.boolean  "moderated"
    t.integer  "space_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "featured"
  end

  create_table "audios", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.integer  "radio_program_id"
  end

  create_table "clips", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "movie_id"
    t.string   "clip_file_name"
    t.string   "clip_content_type"
    t.integer  "clip_file_size"
    t.datetime "clip_updated_at"
    t.boolean  "featured"
    t.string   "qtvideo_file_name"
    t.string   "qtvideo_content_type"
    t.integer  "qtvideo_file_size"
    t.datetime "qtvideo_updated_at"
    t.string   "qtaudio_file_name"
    t.string   "qtaudio_content_type"
    t.integer  "qtaudio_file_size"
    t.datetime "qtaudio_updated_at"
    t.string   "oggvideo_file_name"
    t.string   "oggvideo_content_type"
    t.integer  "oggvideo_file_size"
    t.datetime "oggvideo_updated_at"
    t.string   "oggaudio_file_name"
    t.string   "oggaudio_content_type"
    t.integer  "oggaudio_file_size"
    t.datetime "oggaudio_updated_at"
    t.string   "webm_file_name"
    t.string   "webm_content_type"
    t.integer  "webm_file_size"
    t.datetime "webm_updated_at"
    t.string   "posterframe_file_name"
    t.string   "posterframe_content_type"
    t.integer  "posterframe_file_size"
    t.datetime "posterframe_updated_at"
  end

  create_table "coach_requests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.text     "organization"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "request"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "daytime_phone"
    t.string   "evening_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "date"
    t.string   "time"
    t.string   "venue"
    t.string   "location"
    t.string   "summary_title"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "gallery_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gallery_images", :force => true do |t|
    t.text     "image_desc"
    t.string   "filename"
    t.integer  "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.date     "date"
    t.string   "speaker"
    t.text     "description"
    t.string   "url"
    t.string   "filename"
    t.boolean  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "duration"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.boolean  "carousel"
  end

  create_table "prayers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.text     "request"
    t.boolean  "moderated"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "sex"
    t.integer  "age"
    t.string   "prayer_type"
  end

  create_table "quotes", :force => true do |t|
    t.text     "text"
    t.text     "author"
    t.text     "source"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "radio_programs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.boolean  "featured"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "speaker"
    t.integer  "episode"
  end

  create_table "radios", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "duration"
    t.string   "speaker"
    t.boolean  "featured"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "church"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.text     "request"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "resources", :force => true do |t|
    t.text     "title"
    t.text     "subtitle"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "document"
    t.string   "image"
    t.string   "video"
    t.string   "audio"
  end

  create_table "stats", :force => true do |t|
    t.text     "title"
    t.text     "stat"
    t.text     "content"
    t.string   "topic"
    t.text     "source"
    t.boolean  "visible"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "mannerism"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
