class Customer < ApplicationRecord
  has_many :orders

  def sumOfAllOrders
  	sum = 0
  	orders.each do |order|
  		sum += order.totalSum
  	end
  	return sum
  end

end
