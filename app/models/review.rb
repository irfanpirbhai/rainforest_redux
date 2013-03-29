class Review < ActiveRecord::Base
  attr_accessible :comment

  validates :comment, :presence => true

  belongs_to :product
  belongs_to :user
end
