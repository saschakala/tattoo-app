class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password_digest
      t.integer :total_tattoos
      t.integer :age_first_tattoo
      t.string :fav_tattoo
      t.timestamps null: false
    end
  end
end
