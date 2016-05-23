class Director < ActiveRecord::Base
    belongs_to(:director, :class_name => "Director", :foreign_key => "director_id")

    has_many(:characters, :class_name => "Character", :foreign_key => "movie_id")

end
