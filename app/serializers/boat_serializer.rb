class BoatSerializer < ActiveModel::Serializer
  attributes :id, :name, :owner, :skipper, :num_crew
  has_one :crew_pool
  has_one :maintainer
end
