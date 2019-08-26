class AddTablePartita < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|

      t.integer :user
      t.integer :avversario
      t.integer :result

      t.integer :flag , default: 0

      t.timestamps
      end
  end
end
