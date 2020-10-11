class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :years_experience
      t.integer :price_hourly
      t.string :specializes_in
      t.timestamps null: false
    end
  end
end