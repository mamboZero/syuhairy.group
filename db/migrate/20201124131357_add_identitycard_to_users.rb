class AddIdentitycardToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :identitycard, :string
    add_index :users, :identitycard, unique: true
  end
end
