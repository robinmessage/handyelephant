class Staffmember < ActiveRecord::Base
  has_many :appointments
  has_many :meetings, :through => :appointments
end
