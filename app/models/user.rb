class User < ActiveRecord::Base
    has_many :tattoos
    # has_many :artists, through: :tattoos

    has_secure_password

    validates :name, :username, :email, :total_tattoos, :age_first_tattoo, presence: true
    validates :email, uniqueness: true
end


