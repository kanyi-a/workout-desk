class StretchPose < ApplicationRecord
      has_many :comments
      has_many :users, through: :comments

      has_one :admin
end
