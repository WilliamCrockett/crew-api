# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  has_many :event_crews
  has_many :crews, through: :event_crews
end
