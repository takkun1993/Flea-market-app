# レディース
lady = Category.create(name: "レディース")

lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onepice = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_pajamas = lady.children.create(name: "ルームウェア/パジャマ")
lady_legwear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessories = lady.children.create(name: "アクセサリー")
lady_hairAccessories = lady.children.create(name: "ヘアアクセサリー")
lady_komono = lady.children.create(name: "小物")
lady_clock = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エクステ")
lady_yukata = lady.children.create(name: "浴衣/水着")
lady_suit = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(name: "マタニティー")
lady_other = lady.children.create(name: "その他")

lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス七分/長袖"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "チュニック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "ベスト/ジレ"},{name: "パーカー"},{name: "トレーナー/スウェット"},{name: "ベアトップ/チューブトップ"},{name: "ジャージ"},{name: "その他"}])

lady_jacket.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニム"},{name:"レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンバー/ブルゾン"},{name: "ポンチョ"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ビーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "毛皮/ファーコート"},{name: "スプリングコート"},{name: "スカジャン"},{name: "その他"}])

lady_pants.children.create([{name: "デニム/ジーンズ"},{name: "ショートパンツ"},{name: "カジュアルパンツ"},{name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])

lady_skirt.children.create([{name: "ミニスカート"},{name: "膝丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])

lady_onepice.children.create([{name: "ミニワンピ"},{name: "膝丈ワンピ"},{name: "ロングワンピ"},{name: "その他"}])

lady_shoes.children.create([{name: "ハイヒール"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラッシュシューズ/バレエシューズ"},{name: "その他"}])

lady_pajamas.children.create([{name: "ルームウェア"},{name: "パジャマ"},{name: "その他"}])

lady_legwear.children.create([{name: "ソックス"},{name: "スパッツ/レギンス"},{name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])

lady_hat.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])

lady_accessories.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])

lady_hairAccessories.children.create([{name: "ヘアゴム/シュシュ"},{name: "ヘアバンド/カチューシャ"},{name: "ヘアピン"},{name: "その他"}])

lady_komono.children.create([{name: "長財布"},{name: "折り財布"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋/アームカバー"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー/ショール"},{name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "イヤーマフ"},{name: "傘"},{name: "レインコート"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])

lady_clock.children.create([{name: "腕時計/(アナログ)"},{name: "腕時計/デジタル"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])

lady_wig.children.create([{name: "前髪ウィッグ"},{name: "ロングストレート"},{name: "ロングカール"},{name: "ショートストレート"},{name: "ショートカール"},{name: "その他"}])

lady_yukata.children.create([{name: "浴衣"},{name: "着物"},{name: "長襦袢/半襦袢"},{name: "水着セパレート"},{name: "水着ワンピース"},{name: "水着スポーツ用"},{name: "その他"}])

lady_suit.children.create([{name: "スカートスーツ上下"},{name: "パンツスーツ上下"},{name: "ドレス"},{name: "パーティシューズ"},{name: "シューズ"},{name: "その他"}])

lady_maternity.children.create([{name: "トップス"},{name: "アウター"},{name: "インナー"},{name: "ワンピース"},{name: "パンツ/スパッツ"},{name: "スカート"},{name: "パジャマ"},{name: "授乳服"},{name: "その他"}])

lady_other.children.create([{name: "コスプレ"},{name: "下着"},{name: "その他"}])

# メンズ
men = Category.create(name: "メンズ")

men_tops = men.children.create(name: "トップス")
men_jacket = men.children.create(name: "ジャケット/アウター")
men_pants = men.children.create(name: "パンツ")
men_shoes = men.children.create(name: "靴")
men_bag = men.children.create(name: "バッグ")
men_suit = men.children.create(name: "スーツ")
men_hat = men.children.create(name: "帽子")
men_accessories = men.children.create(name: "アクセサリー")
men_komono = men.children.create(name: "小物")
men_clock = men.children.create(name: "時計")
men_swimSuit = men.children.create(name: "水着")
men_legWear = men.children.create(name: "レッグウェア")
men_underWear = men.children.create(name: "アンダーウェア")
men_other = men.children.create(name: "その他")

men_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"},{name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"},{name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "カーディガン"},{name: "パーカー"},{name: "スウェット"},{name: "ジャージ"},{name: "その他"}])

men_jacket.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニム"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダーズジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ナイロンジャケット"},{name: "フライトジャケット"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "ステントカラーコート"},{name: "トレンチコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "スカジャン"},{name: "ブルゾン"},{name: "マウンテンパーカー"},{name: "ダウンベスト"},{name: "ポンチョ"},{name: "カバーオール"},{name: "その他"}])

men_pants.children.create([{name: "デニム/ジーンズ"},{name: "ワークパンツ/カーゴパンツ"},{name: "スラックス"},{name: "チノパン"},{name: "ショートパンツ"},{name: "ペインターパンツ"},{name: "サルエルパンツ"},{name: "オーバーオール"},{name: "その他"}])

men_shoes.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "モカシン"},{name: "ドレス/ビジネス"},{name: "長靴/レインシューズ"},{name: "デッキシューズ"},{name: "その他"}])

men_bag.children.create([{name: "ショルダーバッグ"},{name: "トートバッグ"},{name: "ボストンバッグ"},{name: "リュック/バックパック"},{name: "ウエストポーチ"},{name: "ドラムバッグ"},{name: "ビジネスバック"},{name: "トラベルバッグ"},{name: "メッセンジャーバッグ"},{name: "エコバック"},{name: "その他"}])

men_suit.children.create([{name: "スーツジャケット"},{name: "スーツベスト"},{name: "スラックス"},{name: "セットアップ"},{name: "その他"}])

men_hat.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハンチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])

men_accessories.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "その他"}])

men_komono.children.create([{name: "長財布"},{name: "折り財布"},{name: "マネークリップ"},{name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},{name: "キーケース"},{name: "キーホルダー"},{name: "手袋"},{name: "ハンカチ"},{name: "ベルト"},{name: "マフラー"},{name: "ストール"},{name: "バンダナ"},{name: "ネックウォーマー"},{name: "サスペンダー"},{name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},{name: "手帳"},{name: "ストラップ"},{name: "ネクタイピン"},{name: "カフリンクス"},{name: "イヤーマフ"},{name: "傘"},{name: "レインコート"},{name: "ミラー"},{name: "タバコグッズ"},{name: "その他"}])

men_clock.children.create([{name: "腕時計/(アナログ)"},{name: "腕時計/デジタル"},{name: "ラバーベルト"},{name: "レザーベルト"},{name: "金属ベルト"},{name: "その他"}])

men_swimSuit.children.create([{name: "一般水着"},{name: "スポーツ用"},{name: "アクセサリー"},{name: "その他"}])

men_legWear.children.create([{name: "ソックス"},{name: "レギンス/スパッツ"},{name: "レッグウォーマー"},{name: "その他"}])

men_underWear.children.create([{name: "トランクス"},{name: "ボクサーパンツ"},{name: "その他"}])

men_other.children.create([{name: "コスプレ"},{name: "その他"}])

# ベビーキッズ
kids = Category.create(name: "ベビー/キッズ")

kids_babyGirl = kids.children.create(name: "ベビー服(女の子用)-95cm")
kids_babyBoy = kids.children.create(name: "ベビー服(男の子用)-95cm")
kids_babyUnisex = kids.children.create(name: "ベビー服(男女兼用)-95cm")
kids_kidsGirl = kids.children.create(name: "キッズ服(女の子用)100cm-")
kids_kidsBoy = kids.children.create(name: "キッズ服(男の子用)100cm-")
kids_kidsUnisex = kids.children.create(name: "キッズ服(男女兼用)100cm-")
kids_shoes = kids.children.create(name: "キッズ靴")
kids_fashion = kids.children.create(name: "子供用ファッション小物")
kids_toilet = kids.children.create(name: "おむつ/トイレ/バス")
kids_movingGoods = kids.children.create(name: "外出/移動用品")
kids_foods = kids.children.create(name: "授乳/食事")
kids_bedding = kids.children.create(name: "ベビー家具/寝具/室内用品")
kids_toy = kids.children.create(name: "おもちゃ")
kids_souvenir = kids.children.create(name: "行事/記念品")
kids_other = kids.children.create(name: "その他")

kids_babyGirl.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "スカート"},{name: "ワンピース"},{name: "ベビードレス"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンバース"},{name: "その他"}])

kids_babyBoy.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンバース"},{name: "その他"}])

kids_babyUnisex.children.create([{name: "トップス"},{name: "アウター"},{name: "パンツ"},{name: "おくるみ"},{name: "下着/肌着"},{name: "パジャマ"},{name: "ロンバース"},{name: "その他"}])

kids_kidsGirl.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(チュニック)"},{name: "トップス(タンクトップ)"},{name: "トップス(その他)"},{name: "スカート"},{name:"パンツ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])

kids_kidsGirl.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(チュニック)"},{name: "トップス(タンクトップ)"},{name: "トップス(その他)"},{name: "スカート"},{name:"パンツ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])

kids_kidsBoy.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name:"パンツ"},{name: "セットアップ"},{name: "パジャマ"},{name:"フォーマル/ドレス"},{name:"和服"},{name:"浴衣"},{name:"甚平"},{name:"水着"},{name:"その他"}])

kids_kidsUnisex.children.create([{name: "コート"},{name: "ジャケット/上着"},{name: "トップス(Tシャツ/カットソー)"},{name: "トップス(トレーナー)"},{name: "トップス(その他)"},{name:"ボトムス"},{name: "パジャマ"},{name:"その他"}])

kids_shoes.children.create([{name: "スニーカー"},{name: "サンダル"},{name: "ブーツ"},{name: "長靴"},{name:"その他"}])

kids_fashion.children.create([{name: "靴下/スパッツ"},{name: "帽子"},{name: "エプロン"},{name: "サスペンダー"},{name:"タイツ"},{name:"ハンカチ"},{name:"バンダナ"},{name:"ベルト"},{name:"マフラー"},{name:"傘"},{name:"手袋"},{name:"スタイ"},{name:"バッグ"},{name:"その他"},])

kids_toilet.children.create([{name: "ベビーバス"},{name: "お風呂用品"},{name: "その他"}])

kids_movingGoods.children.create([{name: "ベビーカー"},{name: "抱っこ紐/スリング"},{name: "チャイルドシート"},{name: "その他"}])

kids_foods.children.create([{name: "ミルク"},{name: "ベビーフード"},{name: "ベビー用食器"},{name: "その他"}])

kids_bedding.children.create([{name: "ベッド"},{name: "布団/毛布"},{name: "イス"},{name: "タンス"},{name: "その他"}])

kids_toy.children.create([{name: "お風呂のおもちゃ"},{name: "がらがら"},{name: "オルゴール"},{name: "ベビージム"},{name: "手押し車/カタカタ"},{name: "知育玩具"},{name: "その他"}])

kids_souvenir.children.create([{name: "お宮参り用品"},{name: "お食い初め用品"},{name: "アルバム"},{name: "手形/足形"},{name: "その他"}])

kids_other.children.create([{name: "母子手帳"},{name: "その他"}])

# インテリア
interior = Category.create(name: "インテリア/住まい/小物")

interior_kitchen = interior.children.create(name: "キッチン/食器")
interior_bed = interior.children.create(name: "ベッド/マットレス")
interior_chair = interior.children.create(name: "椅子/チェア")
interior_desk = interior.children.create(name: "机/テーブル")
interior_storageFurniture = interior.children.create(name: "収納家具")
interior_rugMat = interior.children.create(name: "ラグ/カーペットマット")
interior_curtain = interior.children.create(name: "カーテン/ブラインド")
interior_light = interior.children.create(name: "ライト/照明")
interior_bedding = interior.children.create(name: "寝具")
interior_accessories = interior.children.create(name: "インテリア小物")
interior_season = interior.children.create(name: "季節/年中行事")
interior_other = interior.children.create(name: "その他")

interior_kitchen.children.create([{name: "食器"},{name: "調理器具"},{name: "収納キッチン"},{name: "弁当用品"},{name: "カトラリー(スプーン等)"},{name: "テーブル用品"},{name: "容器"},{name: "エプロン"},{name: "アルコールグッズ"},{name: "浄水器"},{name: "その他"}])

interior_bed.children.create([{name: "セミシングルベッド"},{name: "シングルベッド"},{name: "セミダブルベット"},{name: "ダブルベッド"},{name: "ワイドダブルベッド"},{name: "クイーンベッド"},{name: "キングベッド"},{name: "脚付きマットレスベッド"},{name: "マットレス"},{name: "すのこベッド"},{name: "ロフトベッド/システムベッド"},{name: "簡易ベッド/折立みベッド"},{name: "収納付き"},{name: "その他"}])

interior_chair.children.create([{name: "一般"},{name: "スツール"},{name: "ダイニングチェア"},{name: "ハイバックチェア"},{name: "ロッキングチェア"},{name: "座椅子"},{name: "折り畳み椅子"},{name: "デスクチェア"},{name: "その他"}])

interior_desk.children.create([{name: "こたつ"},{name: "カウンターテーブル"},{name: "サイドテーブル"},{name: "ダイニングテーブル"},{name: "座卓/ちゃぶ台"},{name: "アウトドア用"},{name: "パソコン用"},{name: "事務机/学習机"},{name: "その他"}])

interior_storageFurniture.children.create([{name: "リビング収納"},{name: "キッチン収納"},{name: "玄関/屋外収納"},{name: "バス/トイレ収納"},{name: "本収納"},{name: "本/CD/DVD収納"},{name: "洋服タンス/押入れ収納"},{name: "電話台/FAX台"},{name: "ドレッサー/鏡台"},{name: "棚/ラック"},{name: "ケース/ボックス"},{name: "その他"}])

interior_rugMat.children.create([{name: "ラグ"},{name: "カーペット"},{name: "ホットカーペット"},{name: "玄関/キッチンマット"},{name: "トイレ/バスマット"},{name: "その他"}])

interior_curtain.children.create([{name: "カーテン"},{name: "ブラインド"},{name: "ロールスクリーン"},{name: "のれん"},{name: "その他"}])

interior_light.children.create([{name: "蛍光灯"},{name: "天井照明"},{name: "フロアスタンド"},{name: "その他"}])

interior_bedding.children.create([{name: "布団/毛布"},{name: "枕"},{name: "シーツ/カバー"},{name: "その他"}])

interior_accessories.children.create([{name: "オルゴール"},{name: "クッション"},{name: "クッションカバー"},{name: "スリッパラック"},{name: "ティッシュボックス"},{name: "バスケット/かご"},{name: "フォトフレーム"},{name: "マガジンラック"},{name: "モビール"},{name: "花瓶"},{name: "灰皿"},{name: "傘立て"},{name: "小物入れ"},{name: "置き時計"},{name: "掛時計/柱時計"},{name: "鏡(立て掛け式)"},{name: "置物"},{name: "風鈴"},{name: "植物/観葉植物"},{name: "その他"}])

interior_season.children.create([{name: "正月"},{name: "成人式"},{name: "バレンタイン"},{name: "ひな祭り"},{name: "子供の日"},{name: "母の日"},{name: "父の日"},{name: "サマーギフト/お中元"},{name: "夏/夏休み"},{name: "ハロウィン"},{name: "敬老の日"},{name: "七五三"},{name: "お歳暮"},{name: "クリスマス"},{name: "冬一般"},{name: "その他"}])

interior_other.children.create([{name: "その他"}])

# 本/音楽/ゲーム

entertainment = Category.create(name: "本/音楽/ゲーム")

entertainment_book = entertainment.children.create(name: "本")
entertainment_manga = entertainment.children.create(name: "漫画")
entertainment_magazine = entertainment.children.create(name: "雑誌")
entertainment_cd = entertainment.children.create(name: "CD")
entertainment_dvd = interior.children.create(name: "DVD/ブルーレイ")
entertainment_record = interior.children.create(name: "レコード")
entertainment_game = interior.children.create(name: "TVゲーム")

entertainment_book.children.create([{name: "文学/小説"},{name: "人文/社会"},{name: "ノンフィクション/教養"},{name: "地図/旅行ガイド"},{name: "ビジネス/経済"},{name: "健康/医学"},{name: "コンピューター/IT"},{name: "趣味/スポーツ/実用"},{name: "住まい/暮らし/子育て"},{name: "アート/エンタメ"},{name: "洋書"},{name: "絵本"},{name: "参考書"},{name: "その他"}])

entertainment_manga.children.create([{name: "全巻セット"},{name: "少年漫画"},{name: "少女漫画"},{name: "青年漫画"},{name: "女性漫画"},{name: "同人誌"},{name: "その他"}])

entertainment_magazine.children.create([{name: "アート/エンタメ/ホビー"},{name: "ファッション"},{name: "ニュース/総合"},{name: "趣味/スポーツ"},{name: "その他"}])

entertainment_cd.children.create([{name: "邦楽"},{name: "洋楽"},{name: "アニメ"},{name: "クラシック"},{name: "K-POP/アジア"},{name: "キッズ/ファミリー"},{name: "その他"}])

entertainment_dvd.children.create([{name: "外国映画"},{name: "日本映画"},{name: "アニメ"},{name: "TVドラマ"},{name: "ミュージック"},{name: "お笑い/バラエティ"},{name: "スポーツ/フィットネス"},{name: "キッズ/ファミリー"},{name: "その他"}])

entertainment_record.children.create([{name: "邦楽"},{name: "洋楽"},{name: "その他"}])

entertainment_game.children.create([{name: "家庭用ゲーム機本体"},{name: "家庭用ゲームソフト"},{name: "携帯用ゲーム機本体"},{name: "携帯用ゲームソフト"},{name: "PCゲーム"},{name: "その他"}])

# おもちゃ/ホビー/グッズ

toys = Category.create(name: "おもちゃ/ホビー/グッズ")

toys_toy = toys.children.create(name: "おもちゃ")
toys_talentGoods = toys.children.create(name: "タレントグッズ")
toys_animeGoods = toys.children.create(name: "コミック/アニメグッズ")
toys_tradingCards = toys.children.create(name: "トレーディングカード")
toys_figure = toys.children.create(name: "フィギュア")
toys_musicalInstrument = toys.children.create(name: "楽器/機材")
toys_collection = toys.children.create(name: "コレクション")
toys_military = toys.children.create(name: "ミリタリー")
toys_workOfArt = toys.children.create(name: "美術品")
toys_artSupplies = toys.children.create(name: "アート用品")
toys_other = toys.children.create(name: "その他")

toys_toy.children.create([{name: "キャラクターグッズ"},{name: "ぬいぐるみ"},{name: "小物/アクセサリー"},{name: "模型/プラモデル"},{name: "ミニカー"},{name: "トイラジコン"},{name: "プラモデル"},{name: "ホビーラジコン"},{name: "鉄道模型"},{name: "その他"}])

toys_talentGoods.children.create([{name: "アイドル"},{name: "ミュージシャン"},{name: "タレント/お笑い芸人"},{name: "スポーツ選手"},{name: "その他"}])

toys_animeGoods.children.create([{name: "ストラップ"},{name: "キーホルダー"},{name: "バッジ"},{name: "カード"},{name: "クリアファイル"},{name: "ポスター"},{name: "タオル"},{name: "その他"}])

toys_tradingCards.children.create([{name: "遊戯王"},{name: "マジックギャザリング"},{name: "ポケモンカードゲーム"},{name: "デュエルマスターズ"},{name: "バトルスピリッツ"},{name: "プリパラ"},{name: "アイカツ"},{name: "カードファイト!!ヴァンガード"},{name: "ヴァイスシュバルツ"},{name: "プロ野球オーナーズリーグ"},{name: "ベースボールヒーローズ"},{name: "ドラゴンボール"},{name: "スリープ"},{name: "その他"}])

toys_figure.children.create([{name: "アニメ/コミック"},{name: "特撮"},{name: "ゲームキャラクター"},{name: "SF/ファンタジー/ホラー"},{name: "アメコミ"},{name: "スポーツ"},{name: "ミリタリー"},{name: "その他"}])

toys_musicalInstrument.children.create([{name: "エレキギター"},{name: "アコースティクギター"},{name: "ベース"},{name: "エフェクター"},{name: "アンプ"},{name: "弦楽器"},{name: "管楽器"},{name: "鍵盤楽器"},{name: "打楽器"},{name: "和楽器"},{name: "楽譜/スコア"},{name: "レコーディング/AP機器"},{name: "DJ機器"},{name: "DTM/DAW"},{name: "その他"}])

toys_collection.children.create([{name: "武具"},{name: "使用済切手/官製葉書"},{name: "旧貨幣/金貨/銀貨/記念硬貨"},{name: "印刷物"},{name: "ノベルティグッズ"},{name: "その他"}])

toys_military.children.create([{name: "トイガン"},{name: "個別装備"},{name: "その他"}])

toys_workOfArt.children.create([{name: "陶芸"},{name: "ガラス"},{name: "漆芸"},{name: "金属工芸"},{name: "絵画/タペストリー"},{name: "版画"},{name: "彫刻/オブジェクト"},{name: "書"},{name: "写真"},{name: "その他"}])

toys_artSupplies.children.create([{name: "画材"},{name: "額縁"},{name: "その他"}])

toys_other.children.create([{name: "トランプ/UNO"},{name: "カルタ/百人一首"},{name: "ダーツ"},{name: "ビリヤード"},{name: "麻雀"},{name: "パズル・ジグソーパズル"},{name: "囲碁/将棋"},{name: "オセロ/チェス"},{name: "人生ゲーム"},{name: "野球/サッカーゲーム"},{name: "スポーツ"},{name: "三輪車/乗り物"},{name: "ヨーヨー"},{name: "模型制作用品"},{name: "鉄道"},{name: "航空機"},{name: "アマチュア無線"},{name: "パチンコ/スロット"},{name: "その他"}])

#コスメ/香水/美容

beauty = Category.create(name: "コスメ/香水/美容")

beauty_baseMakeup = beauty.children.create(name: "ベースメイク")
beauty_makeup = beauty.children.create(name: "メイクアップ")
beauty_nailCare = beauty.children.create(name: "ネイルケア")
beauty_perfume = beauty.children.create(name: "香水")
beauty_skinCare = beauty.children.create(name: "スキンケア")
beauty_hairCare = beauty.children.create(name: "ヘアケア")
beauty_bodyCare = beauty.children.create(name: "ボディケア")
beauty_oralCare = beauty.children.create(name: "オーラルケア")
beauty_relaxation = beauty.children.create(name: "リラクゼーション")
beauty_diet = beauty.children.create(name: "ダイエット")
beauty_other = beauty.children.create(name: "その他")

beauty_baseMakeup.children.create([{name: "ファンデーション"},{name: "化粧下地"},{name: "コントロール"},{name: "BBクリーム"},{name: "CCクリーム"},{name: "コンシーラー"},{name: "フェイスパウダー"},{name: "トライアルセット/サンプル"},{name: "その他"}])

beauty_makeup.children.create([{name: "アイシャドウ"},{name: "口紅"},{name: "リップグロス"},{name: "チーク"},{name: "フェイスカラー"},{name: "マスカラ"},{name: "アイライナー"},{name: "つけまつげ"},{name: "アイブロウペンシル"},{name: "パウダーアイブロウ"},{name: "まゆマスカラ"},{name: "トライアルセット/サンプル"},{name: "メイク道具/化粧小物"},{name: "美顔用品"},{name: "美顔ローラー"},{name: "その他"}])

beauty_nailCare.children.create([{name: "ネイルカラー"},{name: "カラージュエル"},{name: "ネイルベースコード/ トップコード"},{name: "ネイルアート用品"},{name: "ネイルパーツ"},{name: "ネイルチップ/つけ爪"},{name: "手入れ用具"},{name: "除光液"},{name: "その他"}])

beauty_perfume.children.create([{name: "香水(女性用)"},{name: "香水(男性用)"},{name: "ユニセックス"},{name: "ボディミスト"},{name: "その他"}])

beauty_skinCare.children.create([{name: "化粧水/ローション"},{name: "乳液/ミルク"},{name: "美容液"},{name: "フェイスクリーム"},{name: "洗顔料"},{name: "クレンジング/メイク落とし"},{name: "パック/フェイスマスク"},{name: "ジェル/ゲル"},{name: "ブースター"},{name: "導入液"},{name: "アイケア"},{name: "リップケア"},{name: "トライアルセット/サンプル
"},{name: "洗顔グッズ"},{name: "その他"}])

beauty_hairCare.children.create([{name: "シャンプー"},{name: "トリートメント"},{name: "コンディショナー"},{name: "リンス"},{name: "スタイリング剤"},{name: "カラーリング剤"},{name: "ブラシ"},{name: "その他"}])

beauty_bodyCare.children.create([{name: "オイル/クリーム"},{name: "ハンドクリーム"},{name: "ローション"},{name: "日焼け止め/サンオイル"},{name: "ボディソープ"},{name: "入浴剤"},{name: "制汗/デオドラント"},{name: "フットケア"},{name: "その他"}])

beauty_oralCare.children.create([{name: "口臭防止/エチケット"},{name: "歯ブラシ"},{name: "その他"}])

beauty_relaxation.children.create([{name: "エッセンシャルオイル"},{name: "芳香剤"},{name: "お香/香炉"},{name: "キャンドル"},{name: "リラクゼーション"},{name: "その他"}])

beauty_diet.children.create([{name: "ダイエット食品"},{name: "エクササイズ用品"},{name: "体重計"},{name: "体脂肪計"},{name: "その他"}])

beauty_other.children.create([{name: "健康用品"},{name: "看護"},{name: "介護用品"},{name: "救急/衛生"},{name: "その他"}])

# 家電/スマホ/カメラ
homeAppliances = Category.create(name: "家電/スマホ/カメラ")

homeAppliances_smartphone = homeAppliances.children.create(name: "スマートフォン/携帯電話")
homeAppliances_accessories = homeAppliances.children.create(name: "オプション（ケース等")
homeAppliances_PC = homeAppliances.children.create(name: "PC/タブレット")
homeAppliances_camera = homeAppliances.children.create(name: "カメラ")
homeAppliances_TV = homeAppliances.children.create(name: "TV/映像機器")
homeAppliances_audio = homeAppliances.children.create(name: "オーディオ機器")
homeAppliances_beauty = homeAppliances.children.create(name: "美容/健康")
homeAppliances_airConditioning = homeAppliances.children.create(name: "冷暖房/空調")
homeAppliances_life = homeAppliances.children.create(name: "生活家電")
homeAppliances_other = homeAppliances.children.create(name: "その他")

homeAppliances_smartphone.children.create([{name: "スマートフォン"},{name: "バッテリー/充電器"},{name: "携帯電話本体"},{name: "PHS本体"},{name: "その他"}])

homeAppliances_accessories.children.create([{name: "Android用ケース"},{name: "Iphone用携帯"},{name: "カバー"},{name: "イヤホンジャック"},{name: "ストラップ"},{name: "フィルム"},{name: "自撮り棒"},{name: "その他"}])

homeAppliances_PC.children.create([{name: "タブレット"},{name: "ノートPC"},{name: "デスクトップ型PC"},{name: "ディスプレイ"},{name: "電子ブックリーダー"},{name: "PC周辺機器"},{name: "PCパーツ"},{name: "その他"}])

homeAppliances_camera.children.create([{name: "デジタルカメラ"},{name: "ビデオカメラ"},{name: "レンズ(単焦点)"},{name: "レンズ(ズーム)"},{name: "フィルムカメラ"},{name: "防犯カメラ"},{name: "その他"}])

homeAppliances_TV.children.create([{name: "TV"},{name: "プロジェクター"},{name: "ブルーレイレコーダー"},{name: "DVDレコーダー"},{name: "ブルーレイプレイヤー"},{name: "DVDプレーヤー"},{name: "映像用ケーブル"},{name: "その他"}])

homeAppliances_audio.children.create([{name: "ポータルプレーヤー"},{name: "イヤフォン"},{name: "ヘッドフォン"},{name: "スピーカー"},{name: "アンプ"},{name: "ケーブル/シールド"},{name: "ラジオ"},{name: "その他"}])

homeAppliances_beauty.children.create([{name: "ヘアドライヤー"},{name: "ヘアアイロン"},{name: "美容機器"},{name: "電気シェーバー"},{name: "電動歯ブラシ"},{name: "その他"}])

homeAppliances_airConditioning.children.create([{name: "エアコン"},{name: "空気清浄機"},{name: "加湿器"},{name: "扇風機"},{name: "除湿機"},{name: "ファンヒーター"},{name: "電気ヒーター"},{name: "オイルヒーター"},{name: "ストーブ"},{name: "ホットカーペット"},{name: "こたつ"},{name: "電気毛布"},{name: "その他"}])

homeAppliances_life.children.create([{name: "冷蔵庫"},{name: "洗濯機"},{name: "炊飯器"},{name: "電子レンジ/オーブン"},{name: "周辺機器"},{name: "アイロン"},{name: "掃除機"},{name: "エスプレッソマシン"},{name: "コーヒーコーヒーメーカー"},{name: "衣類乾燥機"},{name: "その他"}])

homeAppliances_other.children.create([{name: "その他"}])

# スポーツ/レジャー
sports = Category.create(name: "スポーツ/レジャー")

sports_golf = sports.children.create(name: "ゴルフ")
sports_fishing = sports.children.create(name: "フィッシング")
sports_bicycle = sports.children.create(name: "自転車")
sports_training = sports.children.create(name: "トレーニング/エクササイズ")
sports_baseball = sports.children.create(name: "野球")
sports_football = sports.children.create(name: "サッカー/フットサル")
sports_tennis = sports.children.create(name: "テニス")
sports_snowBoard = sports.children.create(name: "スノーボード")
sports_skiing = sports.children.create(name: "スキー")
sports_otherSports = sports.children.create(name: "その他スポーツ")
sports_outdoor = sports.children.create(name: "アウトドア")
sports_other = sports.children.create(name: "その他")

sports_golf.children.create([{name: "クラブ"},{name: "ウェア(男性用)"},{name: "ウェア(女性用)"},{name: "バッグ"},{name: "シューズ(男性用)"},{name: "シューズ(女性用)"},{name: "アクセサリー"},{name: "その他"}])

sports_fishing.children.create([{name: "ロッド"},{name: "リール"},{name: "ルアー用品"},{name: "ウェア"},{name: "釣り糸/ライン"},{name: "その他"}])

sports_bicycle.children.create([{name: "自転車本体"},{name: "ウェア"},{name: "パーツ"},{name: "アクセサリー"},{name: "バッグ"},{name: "工具/メンテナンス"},{name: "その他"}])

sports_training.children.create([{name: "ランニング"},{name: "ウォーキング"},{name: "ヨガ"},{name: "トレーニング用品"},{name: "その他"}])

sports_baseball.children.create([{name: "ウェア"},{name: "シューズ"},{name: "グローブ"},{name: "バット"},{name: "アクセサリー"},{name: "防具"},{name: "練習機器"},{name: "記念グッズ"},{name: "応援グッズ"},{name: "その他"}])

sports_football.children.create([{name: "ウェア"},{name: "シューズ"},{name: "ボール"},{name: "アクセサリー"},{name: "記念グッズ"},{name: "応援グッズ"},{name: "その他"}])

sports_tennis.children.create([{name: "ラケット(硬式用)"},{name: "ラケット(軟式用)"},{name: "ウェア"},{name: "シューズ"},{name: "ボール"},{name: "アクセサリー"},{name: "記念グッズ"},{name: "応援グッズ"},{name: "その他"}])

sports_snowBoard.children.create([{name: "ボード"},{name: "バイディング"},{name: "ブーツ(男性用)"},{name: "ブーツ(女性用)"},{name: "ブーツ(子供用)"},{name: "ウェア(男性用)"},{name: "ウェア(女性用)"},{name: "ウェア(子供用)"},{name: "アクセサリー"},{name: "バック"},{name: "その他"}])

sports_skiing.children.create([{name: "板"},{name: "ブーツ(男性用)"},{name: "ブーツ(女性用)"},{name: "ブーツ(子供用)"},{name: "ビンディング"},{name: "ウェア(男性用)"},{name: "ウェア(女性用)"},{name: "ウェア(子供用)"},{name: "ストック"},{name: "その他"}])

sports_otherSports.children.create([{name: "ダンス/バレエ"},{name: "サーフィン"},{name: "バスケットボール"},{name: "バドミントン"},{name: "バレーボール"},{name: "スケードボード"},{name: "陸上競技"},{name: "ラグビー"},{name: "アメリカンフットボール"},{name: "ボクシング"},{name: "ボウリング"},{name: "その他"}])

sports_outdoor.children.create([{name: "テント/タープ"},{name: "ライト/ランタン"},{name: "寝袋/寝具"},{name: "テーブル/チェア"},{name: "ストーブ/コンロ"},{name: "調理器具"},{name: "食器"},{name: "登山用品"},{name: "その他"}])

sports_other.children.create([{name: "旅行用品"},{name: "その他"}])

# ハンドメイド
handmade = Category.create(name: "ハンドメイド")

handmade_accessories = handmade.children.create(name: "アクセサリー(女性用)")
handmade_fasion = handmade.children.create(name: "ファッション/小物")
handmade_clock = handmade.children.create(name: "アクセサリー/時計")
handmade_dailyNecessities = handmade.children.create(name: "日用品/インテリア")
handmade_hobby = handmade.children.create(name: "趣味/おもちゃ")
handmade_kids = handmade.children.create(name: "キッズ/ベビー")
handmade_material = handmade.children.create(name: "素材")
handmade_derivativeWork = handmade.children.create(name: "二次創作物")
handmade_other = handmade.children.create(name: "その他")

handmade_accessories.children.create([{name: "ピアス"},{name: "イヤリング"},{name: "ネックレス"},{name: "ブレスレット"},{name: "リング"},{name: "チャーム"},{name: "ヘアゴム"},{name: "アンクレット"},{name: "その他"}])

handmade_fasion.children.create([{name: "バッグ(女性用)"},{name: "バッグ(男性用)"},{name: "財布(女性用)"},{name: "財布(男性用)"},{name: "ファッション雑誌"},{name: "その他"}])

handmade_clock.children.create([{name: "アクセサリー(男性用)"},{name: "時計(女性用)"},{name: "時計(男性用)"},{name: "その他"}])

handmade_dailyNecessities.children.create([{name: "キッチン用品"},{name: "家具"},{name: "アート写真"},{name: "アロマ/キャンドル"},{name: "フラワー/ガーデン"},{name: "その他"}])

handmade_hobby.children.create([{name: "クラフト/布製品"},{name: "おもちゃ人形"},{name: "その他"}])

handmade_kids.children.create([{name: "ファッション雑誌"},{name: "スタイ/よだれかけ"},{name: "外出用品"},{name: "ネームタグ"},{name: "その他"}])

handmade_material.children.create([{name: "素材/材料"},{name: "各種パーツ"},{name: "生地/糸"},{name: "型紙/パターン"},{name: "その他"}])

handmade_derivativeWork.children.create([{name: "ingress"},{name: "クリエイターズ宇宙兄弟"},{name: "シンデレラガールズCPグッズ"},{name: "その他"}])

handmade_other.children.create([{name: "その他"}])

# チケット
ticket = Category.create(name: "チケット")

ticket_music = ticket.children.create(name: "音楽")
ticket_sports = ticket.children.create(name: "スポーツ")
ticket_theater = ticket.children.create(name: "演劇/芸能")
ticket_event = ticket.children.create(name: "イベント")
ticket_movie = ticket.children.create(name: "映画")
ticket_facilityUseTicket = ticket.children.create(name: "施設利用券")
ticket_complimentary = ticket.children.create(name: "優待券/割引券")
ticket_other = ticket.children.create(name: "その他")

ticket_music.children.create([{name: "男性アイドル"},{name: "女性アイドル"},{name: "韓流"},{name: "国内アーティスト"},{name: "海外アーティスト"},{name: "音楽フェス"},{name: "声優/アニメ"},{name: "その他"}])

ticket_sports.children.create([{name: "サッカー"},{name: "野球"},{name: "テニス"},{name: "格闘技/プロレス"},{name: "相撲/武道"},{name: "ゴルフ"},{name: "バレーボール"},{name: "バスケットボール"},{name: "モータースポーツ"},{name: "ウィンタースポーツ"},{name: "その他"}])

ticket_theater = ticket.children.create([{name: "ミュージカル"},{name: "演劇"},{name: "伝統芸能"},{name: "落語"},{name: "お笑い"},{name: "オペラ"},{name: "サーカス"},{name: "バレエ"},{name: "その他"}])

ticket_event.children.create([{name: "声優/アニメ"},{name: "キッズ/ファミリー"},{name: "トークショー/講演会"},{name: "その他"}])

ticket_movie.children.create([{name: "邦画"},{name: "洋画"},{name: "その他"}])

ticket_facilityUseTicket.children.create([{name: "遊園地/テーマパーク"},{name: "美術館/博物館"},{name: "スキー場"},{name: "ゴルフ場"},{name: "フィットネスクラブ"},{name: "プール"},{name: "ボウリング場"},{name: "水族館"},{name: "動物園"},{name: "その他"}])

ticket_complimentary.children.create([{name: "ショッピング"},{name: "レストラン/食事券"},{name: "フード/ドリンク券"},{name: "宿泊券"},{name: "その他"}])

ticket_other.children.create([{name: "その他"}])

# 自動車/オートバイ
car = Category.create(name: "自動車/オートバイ")

car_body = car.children.create(name: "自動車本体")
car_autoTires = car.children.create(name: "自動車タイヤ/ホイール")
car_autoParts = car.children.create(name: "自動車パーツ")
car_accessories = car.children.create(name: "自動車アクセサリー")
car_motorcycleBody = car.children.create(name: "オートバイ車体")
car_motorcycleParts = car.children.create(name: "オートバイパーツ")
car_motorcycleAccessories = car.children.create(name: "オートバイアクセサリー")
car_other = car.children.create(name: "その他")

car_body.children.create([{name: "国内自動車"},{name: "外国自動車"},{name: "その他"}])

car_autoTires.children.create([{name: "タイヤ/ホイールセット"},{name: "タイヤ"},{name: "ホイール"},{name: "その他"}])

car_autoParts.children.create([{name: "サスペンション"},{name: "ブレーキ"},{name: "外装/エアロパーツ"},{name: "ライト"},{name: "内装/シート"},{name: "ステアリング"},{name: "マフラー/排気系"},{name: "エンジン/過給機/冷却装置"},{name: "クラッチ/ミッション/駆動系"},{name: "電装品"},{name: "補強パーツ"},{name: "凡用パーツ"},{name: "外国自動車パーツ"},{name: "その他"}])

car_accessories.children.create([{name: "車内アクセサリー"},{name: "カーナビー"},{name: "カーオーディオ"},{name: "社外アクセサリー"},{name: "メンテナンス用品"},{name: "チャイルドシート"},{name: "ドライブレコーダー"},{name: "レーダー探知機"},{name: "カタログ/マニュアル"},{name: "セキリュティ"},{name: "ETC"},{name: "その他"}])

car_motorcycleBody.children.create([{name: "車体"},{name: "その他"}])

car_motorcycleParts.children.create([{name: "タイヤ"},{name: "マフラー"},{name: "エンジン/冷却"},{name: "カウル/フェンダー/外装"},{name: "サスペンション"},{name: "ホイール"},{name: "シート"},{name: "ブレーキ"},{name: "タンク"},{name: "ライト/ウィンカー"},{name: "チェーン/スプロット/駆動系"},{name: "メーター"},{name: "電装系"},{name: "ミラー"},{name: "外国オートバイ用パーツ"},{name: "その他"}])

car_motorcycleAccessories.children.create([{name: "ヘルメット/シールド"},{name: "バイクウェア/装備"},{name: "アクセサリー"},{name: "メンテナンス"},{name: "カタログ/マニュアル"},{name: "その他"}])

car_other.children.create([{name: "その他"}])

# その他
other = Category.create(name: "その他")

other_set = other.children.create(name: "まとめ売り")
other_pet = other.children.create(name: "ペット用品")
other_food = other.children.create(name: "食品")
other_drink = other.children.create(name: "飲料/酒")
other_life = other.children.create(name: "日用品/生活雑貨/旅行")
other_antique = other.children.create(name: "アンティーク/コレクション")
other_stationery = other.children.create(name: "文房具/事務用品")
other_business = other.children.create(name: "事務/店舗用品")
other_other = other.children.create(name: "その他")

other_pet.children.create([{name: "ペットフード"},{name: "犬用品"},{name: "猫用品"},{name: "魚用品/草類"},{name: "小動物用品"},{name: "爬虫類/両生類用品"},{name: "かご/おり"},{name: "鳥用品"},{name: "虫類用品"},{name: "その他"}])

other_food.children.create([{name: "菓子"},{name: "米"},{name: "野菜"},{name: "果物"},{name: "調味料"},{name: "魚介類(加工食品)"},{name: "肉類(加工食品)"},{name: "その他(加工食品)"},{name: "その他"}])

other_drink.children.create([{name: "コーヒー"},{name: "ソフトドリンク"},{name: "ミネラルウォーター"},{name: "茶"},{name: "ウイスキー"},{name: "ワイン"},{name: "ブランデー"},{name: "焼酎"},{name: "日本酒"},{name: "ビール/発泡酒"},{name: "その他"}])

other_life.children.create([{name: "タオル/バス用品"},{name: "日用品/生活雑貨"},{name: "洗剤/柔軟剤"},{name: "旅行用品"},{name: "防災関連グッズ"},{name: "その他"}])

other_antique.children.create([{name: "雑貨"},{name: "工芸品"},{name: "家具"},{name: "印刷物"},{name: "その他"}])

other_stationery.children.create([{name: "筆記具"},{name: "ノート/メモ帳"},{name: "テープ/マスキングテープ"},{name: "カレンダー/スケジュール"},{name: "アルバム/スクラップ"},{name: "ファイル/バインダー"},{name: "ハサミ/カッター"},{name: "カードホルダー/名刺管理"},{name: "のり/ホッチキス"},{name: "その他"}])

other_business.children.create([{name: "オフィス用品一般"},{name: "オフィス家具"},{name: "店舗用品"},{name: "OA機器"},{name: "ラッピング/包装"},{name: "その他"}])

other_other.children.create([{name: "その他"}])
