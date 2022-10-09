class User < ApplicationRecord
      has_many :comments
      has_many :stretch_poses, through: :comments

      has_secure_password
end
