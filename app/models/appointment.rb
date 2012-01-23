class Appointment < ActiveRecord::Base
  belongs_to :staffmember
  belongs_to :meeting
end
