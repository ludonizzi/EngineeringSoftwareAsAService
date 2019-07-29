class AddClan < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :img_profile, :string
    add_column :users, :clan, :integer
  end
end
