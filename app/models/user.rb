class User < ActiveRecord::Base
    has_many :tattoos
    has_many :artists, through: :tattoos

    has_secure_password

    validates :name, :email, :total_tattoos, :age_first_tattoo, :fav_tattoo, presence: true
    validates :email, uniqueness: true
end


