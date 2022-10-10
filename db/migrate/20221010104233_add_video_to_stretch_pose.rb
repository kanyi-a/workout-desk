class AddVideoToStretchPose < ActiveRecord::Migration[6.1]
  def change
    add_column :stretch_poses, :video, :string
  end
end
