class AddAdminIdToStretchPose < ActiveRecord::Migration[6.1]
  def change
    add_column :stretch_poses, :admin_id, :integer
  end
end
