class Character < ActiveRecord::Base

Character:
 - movie_id: must be present
 - actor_id: must be present
 - name: no rules

Actor:
 - name: must be present; must be unique in combination with dob
 - dob: no rules
 - bio: no rules
 - image_url: no rules

end
