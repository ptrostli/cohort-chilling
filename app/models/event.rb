class Event < ApplicationRecord
  validates :title, presence:true
  validates :date, presence:true
  validates :time, presence:true
  validates :city, presence:true
  validates :state, presence:true
  validates :zip, presence:true
  validates :address, presence:true
end
