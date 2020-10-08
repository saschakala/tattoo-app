class Tattoo < ActiveRecord::Base
    belongs_to :users
    # belongs_to :artists

    validates :image, :size, :color, :artist_name, :user_id, presence: true
end
