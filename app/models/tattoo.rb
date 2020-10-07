class TATTOO < ActiveRecord::Base
    belongs_to :users
    belongs_to :artists
end
