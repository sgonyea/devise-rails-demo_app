class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :email,   :null => false
      t.string  :name,    :null => false
      t.boolean :is_admin
      t.string  :authentication_token

      t.timestamps

      t.database_authenticatable
      t.confirmable
      t.recoverable
      t.rememberable
      t.lockable
      t.trackable
    end

    add_index :users, :email,                 :unique => true
    add_index :users, :reset_password_token,  :unique => true
  end
end
