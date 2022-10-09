class Comment < ApplicationRecord
      belongs_to :user 
      belongs_to :stretch_pose
end
