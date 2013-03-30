class Review < ActiveRecord::Base

  attr_accessible :comment

  validates :comment, :user_id, :product_id, :presence => true

  belongs_to :product
  belongs_to :user

end
