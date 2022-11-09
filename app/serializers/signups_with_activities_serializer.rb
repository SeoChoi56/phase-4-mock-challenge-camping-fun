class SignupsWithActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :time, :camper_id, :activity_id
  has_many
end
