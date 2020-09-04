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
      t.boolean :licence1, default: false
      t.boolean :licence2, default: false
      t.boolean :licence3, default: false
      t.boolean :licence4, default: false
      t.boolean :licence5, default: false
      t.date :healthy_exam
      t.date :drive_licence
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
