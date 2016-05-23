class Actor < ActiveRecord::Base

  # Actor:
  #  - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => {:scope =>:dob}
end
