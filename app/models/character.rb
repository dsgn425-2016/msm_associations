class Character < ActiveRecord::Base
  # Character:
  #  - movie_id: must be present
  validates :movie_id, :presence => true
  #  - actor_id: must be present
  validates :actor_id, :presence => true
  
    end
