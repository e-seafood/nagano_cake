# ながのCake

長野県にある小さな洋菓子店「ながのCake」の商品を通販するためのECサイトです。

## 案件の背景

元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るようになったため、<br>管理機能を含んだ通販ECサイトを開設した。

## 通販について
●通販では注文に応じて製作する受注生産型としています。<br>
●現在通販での注文量は十分に対応可能な量のため、1日の受注量に制限は設けていません。<br>
●送料は1配送につき全国一律800円です。<br>
●友人や家族へのプレゼントなど、注文者の住所以外にも商品を配送できます。<br>
●支払方法はクレジットカードまたは銀行振込から選択できます。<br>

# 実装機能と使用方法

## ◆顧客・管理者側側
●顧客は会員登録、ログイン・ログアウト、退会ができます。<br>
●会員のログインはメールアドレスとパスワードで行えます。<br>
●会員がログインしている状態かは、ページのヘッダーにユーザー名が表示されヘッダーの項目が変化することで   判断ができます。<br>
●サイトの閲覧はログインなしで行えます。<br>
●商品をカートに入れ、1度に複数種類、複数商品が購入できます。また、カート内の商品は個数変更・     削除ができます。<br>
●カートへの商品追加はログインなしでは行えません。<br>
●クレジットカード情報はシステム上保持しません。<br>
●会員はマイページからユーザー情報の閲覧・編集、注文履歴の閲覧、配送先の閲覧・編集ができます。<br>
●注文履歴一覧には下記が表示されます。<br>
							○注文日<br>
							○配送先<br>
							○支払金額(商品合計＋送料)<br>
							○注文ステータス<br>
●注文履歴詳細には下記が表示されます。<br>
							○注文日<br>
							○配送先<br>
							○注文ステータス<br>
							○商品の注文内容詳細(商品名、単価、個数、小計)<br>
							○請求情報(商品合計、送料、支払金額)<br>
●会員登録時には下記の情報をユーザー情報として入力できます。<br>
							○名前(姓・名)<br>
							○名前(カナ姓・カナ名)<br>
							○郵便番号<br>
							○住所<br>
							○電話番号<br>
							○メールアドレス<br>
							○パスワード<br>
●商品は税込価格で表示されます。<br>

## ◆管理者側実装機能
●管理者用メールアドレスとパスワードでログインができます。<br>
●商品の新規追加、編集、販売停止(売切表示)が行えます。<br>
●商品情報には下記が変更できます。<br>
							○商品名<br>
							○商品説明文<br>
							○ジャンル<br>
							○税抜価格<br>
							○商品画面<br>
							○販売ステータス<br>
●会員登録されているユーザー情報の閲覧、編集、退会処理が行えます。<br>
●ユーザーの注文履歴が一覧・詳細表示できます<br>
●注文履歴には注文ごとに下記の情報が表示されます<br>
							○購入者<br>
							○購入日<br>
							○購入内容<br>
							○請求額合計<br>
							○配送先<br>
							○注文ステータス<br>
							○各注文商品の製作ステータス<br>
●注文ステータス、製作ステータスの更新ができます<br>
●商品ジャンルには「有効」「無効」を設定でき、無効にしたジャンルはジャンル一覧には表示されません。<br>
 また、無効になっているジャンルに紐づく商品は表示されません。<br>
●ヘッダーには検索窓があり実際に検索することができます。<br>

# 製作物のアピールポイント

## 製作物のアピールポイントは大きく分けて、非同期通信、画像プレビュー機能、商品検索機能です。
顧客側のカート機能では非同期通信により、商品個数を変更した際に、ページを更新せずに小計と合計金額が更新されます。<br>
また、管理者側のジャンル登録機能でも非同期通信を実装しているため、ページを更新せずに情報が更新されます。<br>
また、管理者側の注文履歴詳細画面にも非同期通信機能を実装しております。<br>

管理者側の商品新規登録画面では、画像プレビュー機能を実装しています。<br>

管理者側のヘッダーには検索機能を実装しており、実際に検索すると検索結果画面が表示されます。<br>

## 使用言語
・Ruby on rails (5,2,4)<br>
・HTML&CSS<br>
・Javascript<br>

## Gem
・devise<br>
・refile<br>
・refile-mini_magick<br>
・bootstrap-sass 3.3.6<br>
・jquery-rails<br>
・devise-i18n<br>
・devise-i18n-views<br>
・kaminari 1.2.1<br>
・rubocop-airbnb<br>
・dotenv-rails<br>

## 使用方法
上記のライブラリをインストール後<br>
git clone https://github.com/e-seafood/nagano_cake.git<br>
cd nagano_cake<br>
bundle install<br>
rails s -b 0.0.0.0<br>
を実行してご使用ください。

## 作成者
・青島優<br>
・齋藤由佳<br>
・河内烈央<br>
・塚本拓也

## 所属
DMM WEBCAMP新宿校