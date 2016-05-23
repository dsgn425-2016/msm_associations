class Director < ActiveRecord::Base

# must be present and unique combination with year
  validates :name, :presence => true, :uniqueness => {:scope =>:dob}



end
