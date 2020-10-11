class Artist < ActiveRecord::Base
    has_many :tattoos
    has_many :users, through: :tattoos

    has_secure_password

    validates :name, :username, :email, :years_experience, :price_hourly, presence: true
    validates :username, :email, uniqueness: true
end