class AddColumnsToTattoos < ActiveRecord::Migration[5.2]
  def change
    add_column :tattoos, :style, :string
    add_column :tattoos, :placement, :string
    add_column :tattoos, :description, :text
    add_column :tattoos, :name_of_artist, :string
  end
end
