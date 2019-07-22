class AddDataNascita < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :data_nascita, :date
  end
end
