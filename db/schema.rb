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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_28_014751) do

  create_table "bookings", force: :cascade do |t|
    t.integer "tickets"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "movie_id"
    t.integer "show_time_id"
    t.index ["movie_id"], name: "index_bookings_on_movie_id"
    t.index ["show_time_id"], name: "index_bookings_on_show_time_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "halls", force: :cascade do |t|
    t.string "hall_name"
    t.integer "no_of_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "payments", force: :cascade do |t|
    t.string "card_type"
    t.integer "card_no"
    t.date "exp_date"
    t.integer "cv_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string "code"
    t.datetime "exp_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seatings", force: :cascade do |t|
    t.integer "seat_row"
    t.integer "seat_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_times", force: :cascade do |t|
    t.integer "show_no"
    t.datetime "show_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "movie_id"
    t.integer "hall_id"
    t.date "show_date"
    t.index ["hall_id"], name: "index_show_times_on_hall_id"
    t.index ["movie_id"], name: "index_show_times_on_movie_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "subscribe_promotion"
    t.string "firstname"
    t.string "lastname"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "mobileno"
    t.string "cardtype"
    t.string "cardnumber"
    t.string "cardexpiry"
    t.string "cardzip"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
