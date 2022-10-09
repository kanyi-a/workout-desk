class CreateAddAdminIdToStretchPoses < ActiveRecord::Migration[6.1]
  def change
    create_table :add_admin_id_to_stretch_poses do |t|
      t.integer :admin_id

      t.timestamps
    end
  end
end
