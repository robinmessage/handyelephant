class Meeting < ActiveRecord::Base
  has_many :appointments
  has_many :staffmembers, :through => :appointments
  belongs_to :location

  def staffmember_tokens=(ids)
    self.staffmember_ids = ids.split(",")
  end
end
