class Movie < ActiveRecord::Base
  #  VALIDATIONS
  #  - director_id: must be present
  #  - title: must be present; must be unique in combination with year
  #  - year: must be integer between 1870 and 2050
  #  - duration: must be integer between 0 and 2764800
  #  - description: no rules
  #  - image_url: no rules
  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => { :scope => :year }
  validates :year, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1870, :less_than_or_equal_to => 2050 }
  validates :duration, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 2764800}

end
