class EventCrewSerializer < ActiveModel::Serializer
  attributes :id
  has_one :event_id
  has_one :crew_id
end
