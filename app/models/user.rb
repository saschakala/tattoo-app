class User < ActiveRecord::Base
    has_many :tattoos
    # has_many :artists, through: :tattoos

    has_secure_password

    validates :name, :username, :email, presence: true
    validates :username, :email, uniqueness: true
end


