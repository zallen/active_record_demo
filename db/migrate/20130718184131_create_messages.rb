class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :from_user
      t.references :to_user
      t.string :message

      t.timestamps
    end
    add_index :messages, :from_user_id
    add_index :messages, :to_user_id
  end
end
