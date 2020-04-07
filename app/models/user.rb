class User < ApplicationRecord
    has_many :hopes
    has_many :dreams
end