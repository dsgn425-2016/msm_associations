class Actor < ActiveRecord::Base
  # t.string   "name"
  # t.string   "dob"
  # t.text     "bio"
  # t.string   "image_url"
  # t.datetime "created_at"
  # t.datetime "updated_at"
  validates :name, :presence => true, :uniqueness=> {:scope => :dob}
  



end
