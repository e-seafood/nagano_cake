module ApplicationHelper

  def tax(price)
    ((price*1.1).round(2)).ceil
  end

end
