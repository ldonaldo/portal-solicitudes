class User < ApplicationRecord

    
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    # validates :email, presence: true, length: { minimum:3, maximum: 105 },
    
    # uniqueness: { case_sensitive: false },
    
    # format: { with: VALID_EMAIL_REGEX } 

    has_secure_password

  # Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
   
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :email, presence: true, length: { minimum:3, maximum: 105 },
    
    uniqueness: { case_sensitive: false },
    
    format: { with: VALID_EMAIL_REGEX }
  #validates :email, presence: true, uniqueness: true

end
