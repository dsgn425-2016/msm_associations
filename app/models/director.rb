class Director < ActiveRecord::Base
# - name: must be present; must be unique in combination with dob
validates :name, :presence => true, :uniqueness => { :scope => :dob }
# - dob: no rules
validates :dob, :presence => true
# - bio: no rules
# - image_url: no rules
end
