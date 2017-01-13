class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :product, index: true, foreign_key: true
      t.references :warehouse, index: true, foreign_key: true
      t.integer :count

      t.timestamps null: false
    end
  end
end
