class UserSchedule < ApplicationRecord
  belongs_to :schedules
  belongs_to :users
end
