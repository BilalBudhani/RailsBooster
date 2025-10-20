class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address, null: false
      t.string :password_digest, null: false
      t.string :time_zone
      t.boolean :admin, default: false, null: false

      t.timestamps
    end
    add_index :users, :email_address, unique: true
  end
end
