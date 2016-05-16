class Character < ActiveRecord::Base

  # name must be present and unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob }

end
