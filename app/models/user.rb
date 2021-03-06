# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :crews
  has_many :events
  has_many :event_crews
end
