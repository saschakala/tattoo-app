class CreateTattoos < ActiveRecord::Migration[5.2]
  def change
    create_table :tattoos do |t|
      t.string :image
      t.string :size
      t.string :color
      t.string :artist_name
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
