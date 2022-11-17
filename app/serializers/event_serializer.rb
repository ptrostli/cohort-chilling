class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time
end