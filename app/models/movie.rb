class Movie < ActiveRecord::Base
  belongs_to :director, :class_name=>"Director", :foreign_key=>"director_id"

  has_many :characters, :class_name=>"Character", :foreign_key=>"movie_id"
  has_many :characters
  has_many :actors, :through => :characters

  # - director_id: must be present
  validates :director_id, :presence=>true
  # - title: must be present; must be unique in combination with year
  validates :title, :presence=>true, uniqueness: { scope: :year,
    message: "already exists in this year" }

    # - year: must be integer between 1870 and 2050
    validates :year, :presence=>true, numericality: { only_integer: true, less_than_or_equal_to:2050, greater_than_or_equal_to:1870 }
    # - duration: must be integer between 0 and 2764800
    validates :duration, :presence=>true, numericality: {only_integer: true, less_than_or_equal_to:2764800, greater_than_or_equal_to:0 }
    # - description: no rules
    # - image_url: no rules


  end
