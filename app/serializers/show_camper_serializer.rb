class ShowCamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :activities
  has_many :activities, serializer: ActivitySerializer
end
