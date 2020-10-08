class Tattoo < ActiveRecord::Base
    belongs_to :users
    belongs_to :artists
end
