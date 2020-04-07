class Dream < ApplicationRecord
    belongs_to :user
    has_many :hopes, through: :user
end
