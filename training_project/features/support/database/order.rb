class Order < ActiveRecord::Base
  has_many :adoptions
end