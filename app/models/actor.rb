class Actor < ActiveRecord::Base


  # - name: must be present; must be unique in combination with dob
  validates :name, :presence => true, :uniqueness => { :scope => :dob}

  has_many :movie
  has_many :character

end
