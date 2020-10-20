class Tattoo < ActiveRecord::Base
    belongs_to :user
    belongs_to :artist

    validates :image, :size, :color, :placement, presence: true

    def self.sort
        Tattoo.all.sort_by do |tattoo|
            tattoo.image.strip.downcase
        end

    end

end
