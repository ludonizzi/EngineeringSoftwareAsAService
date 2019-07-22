class AddVariablesForm < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :nome, :string
    add_column :users, :cognome, :string
  end
end
