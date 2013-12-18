class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone_no, null: false
      t.string :birthplace
      t.string :art_style

      t.timestamps
    end
  end
end
