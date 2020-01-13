class User < ApplicationRecord

    has_many :cocktails
    



    has_secure_password

# Specify that the email field must be present when creating a user...
# ... and also unique!
validates :email, presence: true, uniqueness: true

validates :name, presence: true


end
