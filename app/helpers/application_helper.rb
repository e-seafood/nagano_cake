module ApplicationHelper

  def tax(price)
    ((price*1.1).round(2)).ceil
  end

  def post_age
  	800.to_i
  end

end
