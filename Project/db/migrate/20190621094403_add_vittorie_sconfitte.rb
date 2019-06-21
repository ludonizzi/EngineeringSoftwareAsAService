class AddVittorieSconfitte < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :vittorie, :int, default:0
    add_column :users, :sconfitte, :int, default:0
  end
end
