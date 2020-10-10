
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
	postcode: "1234567",
	address: "東京都渋谷区神宮前三丁目",
	tel: "09012345678",
	is_deleted: "false",
	password: "111111"
	)
end

Genre.create!(
	name: "ケーキ",
	is_active: true
)
Genre.create!(
	name: "クッキー・焼き菓子",
	is_active: true
)
Genre.create!(
	name: "チョコレート",
	is_active: true
)
Genre.create!(
	name: "プリン",
	is_active: false
)
Genre.create!(
	name: "和菓子",
	is_active: true
)
Genre.create!(
	name: "アイス",
	is_active: false
)

Item.create!(
	name: "洋梨のチーズタルト",
	explanation: "北海道産の最高級チーズタルト",
	non_taxed_price: "5555",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/younashi.jpg")
)
Item.create!(
	name: "フルーツもりもりケーキ",
	explanation: "お祝いにぴったりな特別感溢れるケーキです",
	non_taxed_price: "1400",
	genre_id: 1,
	is_active: true,
	image: open("./app/assets/images/ho-ruke-ki.jpg")
)
Item.create!(
	name: "クッキー",
	explanation: "これはただのクッキーではありません。香ばしく歯応え抜群です",
	non_taxed_price: "200",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/kukki-.jpg")
)
Item.create!(
	name: "キットカット",
	explanation: "オリジナルキットカットです",
	non_taxed_price: "150",
	genre_id: 3,
	is_active: false,
	image: open("./app/assets/images/kittokatto.jpg")
)
Item.create!(
	name: "ホイップましましプリン",
	explanation: "インスタ映え間違いなし",
	non_taxed_price: "700",
	genre_id: 4,
	is_active: true,
	image: open("./app/assets/images/purinn.jpg")
)
Item.create!(
	name: "樹海羊羹",
	explanation: "まさに芸術",
	non_taxed_price: "10000",
	genre_id: 5,
	is_active: false,
	image: open("./app/assets/images/wagashi.jpg")
)
Item.create!(
	name: "みんな大好きミッキーアイス",
	explanation: "これでみんなも夢の国への入り口！",
	non_taxed_price: "600",
	genre_id: 6,
	is_active: true,
	image: open("./app/assets/images/aisu.jpg")
	
)

9.times do |n|
Shipping.create!(
	name: "test#{n + 1}",
	postcode: "3576678#{n + 1}",
	address: "東京都品川区東五反田  朝日川マンション4階#{n + 1}",
	public_id: n + 1
)
end

5.times do |n|
Order.create!(
	public_id: n + 1,
	address: "東京都品川区東五反田  朝日川マンション4階#{n + 1}",
	postcode: "123456#{n + 1}",
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
