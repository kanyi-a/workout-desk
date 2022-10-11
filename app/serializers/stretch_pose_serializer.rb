class StretchPoseSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :category, :description, :is_favoured, :video
end
