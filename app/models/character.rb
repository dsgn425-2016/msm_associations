class Character < ActiveRecord::Base

  belongs_to(:actor, :class_name => "Actor", :foreign_key => "actor_id")
  belongs_to(:movie, :class_name => "Movie", :foreign_key => "movie_id")

  has_many(:movies, :class_name => "Character", :foreign_key => "movie_id")
  has_many(:actors, :class_name => "Character", :foreign_key => "actor_id")

  #- movie_id: must be present
  validates :movie_id, :presence => true

  #- actor_id: must be present
  validates :actor_id, :presence => true

  #- name: no rules
end
