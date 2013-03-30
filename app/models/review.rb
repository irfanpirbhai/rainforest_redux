class Review < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :comment, :product_id, :user_id

  belongs_to :product
  belongs_to :user  
=======
  attr_accessible :comment

  validates :comment, :user_id, :product_id, :presence => true

  belongs_to :product
  belongs_to :user
>>>>>>> wtony
end
