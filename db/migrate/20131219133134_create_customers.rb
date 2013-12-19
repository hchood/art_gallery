class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone_no, null: false
      t.integer :total_spent_in_cents

      t.timestamps
    end
  end
end
