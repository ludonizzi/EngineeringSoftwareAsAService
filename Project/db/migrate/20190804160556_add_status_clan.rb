class AddStatusClan < ActiveRecord::Migration[5.2]
  def change
    add_column :clan, :status_clan, :text
  end
end
