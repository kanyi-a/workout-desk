class AddStretchPoseIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :stretch_pose_id, :integer
  end
end
