class CreateDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :details do |t|
      t.string :pickup_address
      t.string :deliver_address

      t.timestamps
    end
  end
end
