class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :email
      t.integer :user_id

      t.timestamps
    end
  end
end
