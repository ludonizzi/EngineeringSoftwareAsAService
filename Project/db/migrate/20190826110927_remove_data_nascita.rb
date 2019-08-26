class RemoveDataNascita < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :data_nascita, :date
  end
end
