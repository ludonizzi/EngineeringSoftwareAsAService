class AddBanFlag < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ban_flag, :int, default:0
  end
end
