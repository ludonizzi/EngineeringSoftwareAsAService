class AddAttDefArm < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :att, :string
    	add_column :users, :def, :string
	add_column :users, :arm, :string
  end
end
