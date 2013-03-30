class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price_in_cents, :price_in_dollars

  validates :name, :description, :presence => true
  validates :price_in_cents, :presence => true,
            :numericality => { :greater_than_or_equal_to => 0 }

  monetize :price_in_cents, :as => "price_in_dollars", :presence => true,
           :numericality => { :greater_than_or_equal_to => 0 }

  has_many :reviews

end
