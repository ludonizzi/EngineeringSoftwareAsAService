class AddSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :attacco, :integer, default:0
    add_column :users, :difesa, :integer, default:0
    add_column :users, :attaccospec, :integer, default:0
    add_column :users, :difesaspec, :integer, default:0
    add_column :users, :livello, :integer, default:0
  end
end
