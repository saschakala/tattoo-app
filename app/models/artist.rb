class ARTIST < ActiveRecord::Base
    has_many :tattoos
    has_many :users, through :tattoos
end
