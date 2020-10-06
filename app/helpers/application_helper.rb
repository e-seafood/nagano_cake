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

  def sub_total(price)
    (price.item_count * tax(price.item.non_taxed_price))
  end

  def items_total(carts)
    price = 0
    carts.each do |cart|
      price += sub_total(cart)
    end
    return price
  end

  def amount(carts)
    items_total(carts) + post_age
  end

end
