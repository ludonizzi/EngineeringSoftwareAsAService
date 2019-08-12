class AddClanTable < ActiveRecord::Migration[5.2]
  def change
  create_table :clans do |t|
      t.string :nome
      t.integer :membri
      t.integer :capoclan_id
      t.text :status_clan


      t.timestamps
      end


  end
end
