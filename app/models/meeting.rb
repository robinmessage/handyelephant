class Meeting < ActiveRecord::Base
  
  
  has_many :appointments
  has_many :staffmembers, :through => :appointments
  belongs_to :location
  attr_accessible :staffmember_tokens
  attr_reader :staffmember_tokens
  
  def staffmember_tokens=(ids)
      self.staffmembers_ids = ids.split(",")
  end
end
