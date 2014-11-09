class Order < ActiveRecord::Base
	belongs_to :customer
	has_many :drink_items
	has_many :food_items
	has_many :baraista_qs
	has_many :food_qs
	has_one :payment
end
