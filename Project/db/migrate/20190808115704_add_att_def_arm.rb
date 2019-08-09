class AddAttDefArm < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :att, :string, default: "Spada"
    	add_column :users, :def, :string, default: "Scudo di ferro"
	add_column :users, :arm, :string, default: "Cotta di maglia"
  end
end
