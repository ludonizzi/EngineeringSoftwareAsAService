class AddClanTable < ActiveRecord::Migration[5.2]
  def change
  create_table :clan do |t|
      t.string :nome
      t.text :descrizione
      t.string :arma1
      t.string :arma2
      t.string :difesa
      t.integer :capoclan_id
      t.integer :membri, default:0

      t.timestamps
      end


  end
end
