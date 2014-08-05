class Adoption < ActiveRecord::Base
  belongs_to :puppy
  belongs_to :order
end