class User < ApplicationRecord
    has_many :hopes
    has_many :dreams

    validates :name, presence: true
end