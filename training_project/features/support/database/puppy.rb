class Puppy < ActiveRecord::Base
  has_many :adoptions
end