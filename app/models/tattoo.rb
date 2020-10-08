class Tattoo < ActiveRecord::Base
    belongs_to :users
    # belongs_to :artists

    validates :images, :size, :color, :artist_name, :user_id, presence: true
end
