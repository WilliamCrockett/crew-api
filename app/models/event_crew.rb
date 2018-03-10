# frozen_string_literal: true

class EventCrew < ApplicationRecord
  belongs_to :event
  belongs_to :crew
end
