class User < ApplicationRecord
    has_many :hopes
    has_many :dreams

    has_secure_password

    validates :name, presence: true
    validates :email_address, presence: true
    validates :email_address, confirmation: { case_sensitive: false }
    validates :email_address, presence: true, 'valid_email_2/email': true
end