class CreateStretchPoses < ActiveRecord::Migration[6.1]
  def change
    create_table :stretch_poses do |t|
      t.string :title
      t.string :image
      t.string :category
      t.string :description
      t.boolean :is_favoured

      t.timestamps
    end
  end
end
