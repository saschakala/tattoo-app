class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|

      t.timestamps null: false
    end
  end
end
