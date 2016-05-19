class Director < ActiveRecord::Base

  # Director:
  # - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob}
  # - dob: no rules
  # - bio: no rules
  # - image_url: no rules

  has_many :movies
  has_many :characters
end
