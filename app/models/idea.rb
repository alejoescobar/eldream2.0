class Idea < ActiveRecord::Base
  belongs_to :list
  attr_accessible :name, :list_id
end
