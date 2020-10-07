class USER < ActiveRecord::Base
    has_many :tattoos
    has_many :artists, through :tattoos
end
