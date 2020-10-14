
#環境変数に時間があったら
Admin.create!(
	email: ENV['admin_email'],
	password: ENV['admin_password']
	)

10.times do |n|
Public.create!(
	email: "test#{n+1}@test",
	last_name: "姓#{n+1}",
	first_name: "名#{n+1}",
	last_name_kana: "セイ#{n+1}",
	first_name_kana: "メイ#{n+1}",
	postcode: "1500041",
	address: "東京都渋谷区神南1-19-11",
	tel: "0368694700",
	is_deleted: "false",
	password: "111111"
	)
end

Genre.create!(
	name: "ケーキ",
	is_active: true
)
Genre.create!(
	name: "プリン",
	is_active: true
)
Genre.create!(
	name: "焼き菓子",
	is_active: true
)
Genre.create!(
	name: "キャンディ",
	is_active: true
)
Genre.create!(
	name: "和菓子",
	is_active: false
)

Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake1.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake2.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake3.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake4.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake5.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake6.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake7.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/cake8.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn1.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn2.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn3.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 3,
	is_active: true,
	image: open("./app/assets/images/yakigashi1.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 3,
	is_active: true,
	image: open("./app/assets/images/yakigashi2.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 3,
	is_active: true,
	image: open("./app/assets/images/yakigashi3.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 4,
	is_active: true,
	image: open("./app/assets/images/candy1.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 4,
	is_active: true,
	image: open("./app/assets/images/candy2.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 4,
	is_active: true,
	image: open("./app/assets/images/candy3.jpg")
)
Item.create!(
	name: "test",
	explanation: "test",
	non_taxed_price: "test",
	genre_id: 5,
	is_active: true,
	image: open("./app/assets/images/wagashi.jpg")
)

9.times do |n|
Shipping.create!(
	name: "DMM WEBCAMP 渋谷校",
	postcode: "1500041",
	address: "東京都渋谷区神南1-19-11",
	public_id: n + 1
)
end

5.times do |n|
Order.create!(
	public_id: n + 1,
	address: "東京都渋谷区神南1-19-11",
	postcode: "1500041",
	name: "test#{n + 1}",
	postage: "800",
	amount: "#{1000 + (n * 1000) +800}",
	payment:0,
	status:0
)
end

5.times do |n|
OrderItem.create!(
	item_id: n + 1,
	order_id: n + 1,
	item_count: n + 3,
	making_status:3,
	tax_included_price: "#{1000 + (n * 1000)}"
)
end
