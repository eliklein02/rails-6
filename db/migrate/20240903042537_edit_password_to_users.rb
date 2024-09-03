class EditPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :paddword, :string
    add_column :users, :password, :string
  end
end
