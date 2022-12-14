class User < ApplicationRecord
      
     
      has_secure_password
      
      has_many :comments
      has_many :stretch_poses, through: :comments
      has_one :profile

      

      validates :username, presence: true, uniqueness: true
      #validates :username, length: { minimum: 4 }
      
      validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid' }
end 
