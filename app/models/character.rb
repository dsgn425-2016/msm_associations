class Character < ActiveRecord::Base

 #  Character:
 # - movie_id: must be present
 # - actor_id: must be present
 validates :movie_id, :actor_id, presence: true

 # - name: no rules

 belongs_to :actor
 belongs_to :movie

end
