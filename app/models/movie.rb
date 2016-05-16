class Movie < ActiveRecord::Base

  # Movie:
  #  - director_id: must be present
  validates :director_id, :presence => true

  #  - title: must be present; must be unique in combination with year
  validates :title, :presence => true, :uniqueness => {:scope => :year}

  #  - year: must be integer between 1870 and 2050
  validates :year, :presence => true
  validates :year, :numericality => { :only_integer => true, :greater_than => 1869, :less_than => 2051}

  #  - duration: must be integer between 0 and 2764800
  validates :duration, :numericality => { :only_integer => true, :greater_than => -1, :less_than => 2764801}
  #  - description: no rules
  #  - image_url: no rules
  #

end
