class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.references :user
      t.references :address

      t.timestamps
    end
    add_index :user_addresses, :user_id
    add_index :user_addresses, :address_id
  end
end
