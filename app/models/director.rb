class Director < ActiveRecord::Base

# - name: must be present; must be unique in combination with dob
validates :name, :uniqueness => {:scope => :dob }
# - dob: no rules
# - bio: no rules
# - image_url: no rules

end
