module ApplicationHelper
#消費税の計算
  def tax(price)
    ((price*1.1).round(2)).ceil
  end
#注文商品ごとの小計
  def amount(price,item_count)
  	(price*item_count)
  end
#送料
  def post_age
  	800.to_i
  end

end
