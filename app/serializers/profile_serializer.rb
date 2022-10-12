class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :bio, :email, :user_id
  belongs_to :user
end
