class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.integer :artist_id, null: false
      t.string :name, null: false
      t.date :date_on_sale
      t.integer :price_in_cents
      t.string :style
      t.boolean :available, default: true
      t.integer :collection_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
