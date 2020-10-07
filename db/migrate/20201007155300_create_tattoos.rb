class CreateTattoos < ActiveRecord::Migration[5.2]
  def change
    create_table :tattoos do |t|
      t.string :image
      t.string :size
      t.string :colors
      t.integer :user_id
      t.integer :artist_id
      t.timestamps null: false
    end
  end
end
