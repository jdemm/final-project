class CreateAColors < ActiveRecord::Migration
  def change
    create_table :a_colors do |t|
      t.integer :r
      t.integer :g
      t.integer :b

      t.timestamps null: false
    end
  end
end
