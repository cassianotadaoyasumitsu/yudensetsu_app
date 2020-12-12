# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ##Employees
      t.boolean :admin, default: false
      t.string :name
      t.string :furigana
      t.string :address
      t.string :phone
      t.string :role
      t.integer :level_employee
      t.string :job_exp
      t.string :pay_number
      t.date :started_date
      t.boolean :license1, default: false
      t.boolean :license2, default: false
      t.boolean :license3, default: false
      t.boolean :license4, default: false
      t.boolean :license5, default: false
      t.boolean :license6, default: false
      t.boolean :license7, default: false
      t.boolean :license8, default: false
      t.boolean :license9, default: false
      t.boolean :license10, default: false
      t.boolean :license11, default: false
      t.boolean :license12, default: false
      t.boolean :license13, default: false
      t.boolean :license14, default: false
      t.boolean :license15, default: false
      t.boolean :license16, default: false
      t.boolean :license17, default: false
      t.boolean :license18, default: false
      t.boolean :license19, default: false
      t.boolean :license20, default: false
      t.boolean :license21, default: false
      t.boolean :license22, default: false
      t.boolean :license23, default: false
      t.boolean :license24, default: false
      t.boolean :license25, default: false
      t.date :healthy_exam
      t.date :drive_license
      t.string :document
      t.date :document_date
      t.string :passport
      t.date :passport_date
      t.boolean :active, default: true
      t.boolean :weekend, default: false
      t.boolean :night_shift, default: false

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
