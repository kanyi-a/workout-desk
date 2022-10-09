class User < ApplicationRecord
      has_many :comments
      has_many :stretch_poses, through: :comments
end
