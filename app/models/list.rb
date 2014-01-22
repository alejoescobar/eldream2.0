class List < ActiveRecord::Base
  has_many :ideas
  attr_accessible :name
end
