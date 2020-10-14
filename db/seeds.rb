
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
	name: "特産地鶏のなめらかプリン",
	explanation: "県内で採れた特産地鶏の卵をふんだんに使用した、口あたりの柔らかいプリンです。 ほろ苦いカラメルと合わせてお召し上がりください。",
	non_taxed_price: "380",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn1.jpg")
)
Item.create!(
	name: "ビターショコラのムース",
	explanation: "ほろ苦いムースに香ばしいアーモンドをトッピングした大人向けの商品。 甘酸っぱいベリーと、さっぱりとしたオレンジで味の変化をお楽しみください。",
	non_taxed_price: "450",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn2.jpg")
)
Item.create!(
	name: "口溶けやわらか二層のムース",
	explanation: "二層に分かれたビターショコラとミルクのムースに、ブルーベリーとラズベリーをたっぷりトッピングした一品。",
	non_taxed_price: "400",
	genre_id: 2,
	is_active: true,
	image: open("./app/assets/images/purinn3.jpg")
)
Item.create!(
	name: "北海道産バターのマドレーヌ",
	explanation: "北海道産の上質なバターをたっぷり使って、しっとりとした食感に仕上げました。",
	non_taxed_price: "250",
	genre_id: 3,
	is_active: true,
	image: open("./app/assets/images/yakigashi1.jpg")
)
Item.create!(
	name: "焦がしバター香るフィナンシェ",
	explanation: "北海道産バターを使用した風味豊かなフィナンシェ。 甘さ控えめで男性にも人気が高い一品です。",
	non_taxed_price: "250",
	genre_id: 3,
	is_active: true,
	image: open("./app/assets/images/yakigashi2.jpg")
)
Item.create!(
	name: "絞り出しクッキー",
	explanation: "クッキー生地にアーモンドプールを混ぜて、香ばしく仕上げました。 甘さ控えめのジャムがより風味を引き立てます。 お茶のお供にどうぞ。",
	non_taxed_price: "180",
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
