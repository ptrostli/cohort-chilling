class EventShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :city, :state, :address, :zip, :event_type
end