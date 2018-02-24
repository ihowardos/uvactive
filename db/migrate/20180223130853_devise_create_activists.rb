class DeviseCreateActivists < ActiveRecord::Migration[5.1]
  def change
    create_table :activists do |t|
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      t.datetime :remember_created_at

      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      t.integer :student_id
      t.integer :profile_id

      t.timestamps null: false
    end

    add_index :activists, :email,                unique: true
    add_index :activists, :reset_password_token, unique: true
    add_index :activists, :student_id,           unique: true
    add_index :activists, :profile_id,           unique: true
  end

  def self.down
    drop_table :activists
  end
end
