class Hope < ApplicationRecord
    belongs_to :user
    has_many :dreams, through: :user
end
