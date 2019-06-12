class AddUser < ActiveRecord::Migration[5.2]
  def change
  change_column :users, :roles_mask, :integer, default: 1
  end
end
