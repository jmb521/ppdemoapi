class Timeslot < ApplicationRecord
  belongs_to :user

  scope :available_timeslots, -> {where(taken: false)}
end
