class StretchPoseWithCommentsSerializer < ActiveModel::Serializer
  attributes :id, :title, :category, :description

  has_many :comments
end
