class Tattoo < ActiveRecord::Base
    belongs_to :user
    belongs_to :artist

    validates :image, :size, :color, :placement, presence: true
end
