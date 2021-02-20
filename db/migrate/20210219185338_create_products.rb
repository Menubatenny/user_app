class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :order_items
      t.decimal :price

      t.timestamps
    end
  end
end