User.create!(
  [
    {
      name: "name",
      email: "hoge@example.com",
      password: "password",
      password_confirmation: "password",
    },
    {
      name: "aaa",
      email: "aaa@aaa",
      password: "aaa",
      password_confirmation: "aaa",
    },
    {
      name: "bbb",
      email: "bbb@bbb",
      password: "bbb",
      password_confirmation: "bbb",
    },
  ]
)

#北海道地方
Zoo.create!(
  [
    {
      name: "札幌市円山動物園",
      location: "北海道札幌市中央区宮ヶ丘3番地1",
      area: "北海道地方",
      link: "https://www.city.sapporo.jp/zoo/"
    },
    {
      name: "旭川市旭山動物園",
      location: "北海道旭川市東旭川町倉沼",
      area: "北海道地方",
      link: "https://www.city.asahikawa.hokkaido.jp/asahiyamazoo/index.html"
    },
    {
      name: "おびひろ動物園",
      location: "北海道帯広市緑ヶ丘2",
      area: "北海道地方",
      link: "https://www.city.obihiro.hokkaido.jp/zoo/"
    },
    {
      name: "釧路市動物園",
      location: "北海道釧路市阿寒町下仁々志別11番",
      area: "北海道地方",
      link: "https://www.city.kushiro.lg.jp/zoo/"
    },
  ]
)

#東北地方
Zoo.create!(
  [
    {
      name: "弥生いこいの広場",
      location: "青森県弘前市大字百沢字東岩木山2480-1",
      area: "東北地方",
      link: "http://www.hirosakipark.or.jp/yayoi/"
    },
    {
      name: "盛岡市動物公園",
      location: "岩手県盛岡市新庄字下八木田60-18",
      area: "東北地方",
      link: "https://zoomo.co.jp/"
    },
    {
      name: "岩手サファリパーク",
      location: "岩手県一関市藤沢町黄海字山谷121-2",
      area: "東北地方",
      link: "https://www.iwate-safari.jp/"
    },
    {
      name: "仙台市八木山動物公園",
      location: "宮城県仙台市青葉区国分町3丁目7番1号",
      area: "東北地方",
      link: "https://www.city.sendai.jp/zoo/"
    },
    {
      name: "秋田市大森山動物園",
      location: "秋田県秋田市浜田字潟端154番地",
      area: "東北地方",
      link: "https://www.city.akita.lg.jp/zoo/index.html"
    },
  ]
)

#関東地方
Zoo.create!(
  [
    {
      name: "日立市かみね動物園",
      location: "茨城県日立市宮田町5丁目2-22",
      area: "関東地方",
      link: "https://www.city.hitachi.lg.jp/zoo/"
    },
    {
      name: "宇都宮動物園",
      location: "栃木県宇都宮市上金井町552-2",
      area: "関東地方",
      link: "https://utsunomiya-zoo.com/"
    },
    {
      name: "那須どうぶつ王国",
      location: "栃木県那須郡那須町大島1042-1",
      area: "関東地方",
      link: "https://www.nasu-oukoku.com/"
    },
    {
      name: "那須サファリパーク",
      location: "栃木県那須郡那須町高久乙3523番地",
      area: "関東地方",
      link: "https://www.nasusafari.com/"
    },
    {
      name: "桐生が岡公園",
      location: "群馬県桐生市織姫町1番1号",
      area: "関東地方",
      link: "https://www.city.kiryu.lg.jp/zoo/index.html"
    },
    {
      name: "群馬サファリパーク",
      location: "群馬県富岡市岡本1番地",
      area: "関東地方",
      link: "https://www.safari.co.jp/?gad=1&gclid=Cj0KCQjw756lBhDMARIsAEI0AglqqCQLAWywLCRPEyzbIkcoOeo-3wqT-h8WwMJZD8GpgpO4uoKlMwcaAvWMEALw_wcB"
    },
    {
      name: "大宮公園小動物園",
      location: "埼玉県さいたま市大宮区高鼻町4",
      area: "関東地方",
      link: "https://www.parks.or.jp/omiyazoo/"
    },
    {
      name: "埼玉県こども動物自然公園",
      location: "埼玉県東松山市岩殿554",
      area: "関東地方",
      link: "https://www.parks.or.jp/sczoo/"
    },
    {
      name: "東武動物公園",
      location: "埼玉県南埼玉郡宮代町須賀110",
      area: "関東地方",
      link: "https://www.tobuzoo.com/"
    },
    {
      name: "狭山市立智光山公園こども動物園",
      location: "埼玉県狭山市柏原864-1",
      area: "関東地方",
      link: "https://www.parks.or.jp/chikozan/zoo/"
    },
    {
      name: "大崎公園",
      location: "埼玉県さいたま市南区別所4丁目12番10号",
      area: "関東地方",
      link: "https://www.sgp.or.jp/osaki"
    },
    {
      name: "千葉市動物公園",
      location: "千葉県千葉市若葉区源町280番地",
      area: "関東地方",
      link: "https://www.city.chiba.jp/zoo/"
    },
    {
      name: "市川市動植物園",
      location: "千葉県市川市大町284番1外",
      area: "関東地方",
      link: "https://www.city.ichikawa.lg.jp/zoo/"
    },
    {
      name: "市原ぞうの国",
      location: "千葉県市原市山小川937",
      area: "関東地方",
      link: "https://zounokuni.com/"
    },
    {
      name: "恩賜上野動物園",
      location: "東京都台東区上野公園9-83",
      area: "関東地方",
      link: "https://www.tokyo-zoo.net/zoo/ueno/"
    },
    {
      name: "多摩動物公園",
      location: "東京都日野市程久保7-1-1",
      area: "関東地方",
      link: "https://www.tokyo-zoo.net/zoo/tama/"
    },
    {
      name: "井の頭自然文化園",
      location: "東京都武蔵野市御殿山1-17-6",
      area: "関東地方",
      link: "https://www.tokyo-zoo.net/zoo/ino/"
    },
    {
      name: "大島公園動物園",
      location: "東京都大島町泉津字福重3号",
      area: "関東地方",
      link: "https://oshima-navi.com/zoo/index.html"
    },
    {
      name: "羽村市動物公園",
      location: "東京都羽村市羽4122番地",
      area: "関東地方",
      link: "https://hamurazoo.jp/"
    },
    {
      name: "江戸川区自然動物園",
      location: "東京都江戸川区北葛西3-2-1",
      area: "関東地方",
      link: "https://www.edogawa-kankyozaidan.jp/zoo/?locale=ja"
    },
    {
      name: "足立区生物園",
      location: "東京都足立区保木間2-17-1",
      area: "関東地方",
      link: "https://seibutuen.jp/"
    },
    {
      name: "夢見ヶ崎動物公園",
      location: "神奈川県川崎市幸区南加瀬1-2-1",
      area: "関東地方",
      link: "https://www.yumemizoo.com/"
    },
    {
      name: "野毛山動物園",
      location: "神奈川県横浜市西区老松町63-10",
      area: "関東地方",
      link: "https://www.hama-midorinokyokai.or.jp/zoo/nogeyama/"
    },
    {
      name: "横浜市立金沢動物園",
      location: "神奈川県横浜市金沢区釜利谷東5-15-1",
      area: "関東地方",
      link: "https://www.hama-midorinokyokai.or.jp/zoo/kanazawa/"
    },
    {
      name: "よこはま動物園ズーラシア",
      location: "神奈川県横浜市旭区上白根町1175-1",
      area: "関東地方",
      link: "https://www.hama-midorinokyokai.or.jp/zoo/zoorasia/"
    },
    {
      name: "小田原城址公園",
      location: "神奈川県小田原市城内6番1号",
      area: "関東地方",
      link: "https://odawaracastle.com/Overview/"
    },
    {
      name: "甲府市遊亀公園附属動物園",
      location: "山梨県甲府市太田町10-1",
      area: "関東地方",
      link: "https://www.city.kofu.yamanashi.jp/zoo/index.html"
    },
  ]
)

#中部地方
Zoo.create!(
  [
    {
      name: "富山市ファミリーパーク",
      location: "富山県富山市古沢254番地",
      area: "中部地方",
      link: "https://www.toyama-familypark.jp/"
    },
    {
      name: "高岡古城公園動物園",
      location: "富山県高岡市古城1-6",
      area: "中部地方",
      link: "https://www.takaokakojyozoo.jp/"
    },
    {
      name: "いしかわ動物園",
      location: "石川県能美市徳山町600番地",
      area: "中部地方",
      link: "https://www.ishikawazoo.jp/"
    },
    {
      name: "鯖江市西山動物園",
      location: "福井県鯖江市桜町3丁目8-9",
      area: "中部地方",
      link: "https://www.city.sabae.fukui.jp/nishiyama_zoo/"
    },
    {
      name: "小諸市動物園",
      location: "長野県小諸市丁311",
      area: "中部地方",
      link: "https://www.city.komoro.lg.jp/soshikikarasagasu/kaikoenjimusho/shisetsuannai/1/midori/index.html"
    },
    {
      name: "須坂市動物園",
      location: "長野県須坂市臥竜2丁目4番8号",
      area: "中部地方",
      link: "https://www.city.suzaka.nagano.jp/suzaka_zoo/"
    },
    {
      name: "長野市茶臼山動物園",
      location: "長野県長野市篠ノ井有旅570-1",
      area: "中部地方",
      link: "http://www.chausuyama.com/"
    },
    {
      name: "飯田市立動物園",
      location: "長野県飯田市扇町33",
      area: "中部地方",
      link: "https://iidazoo.jp/"
    },
    {
      name: "大町山岳博物館",
      location: "長野県大町市大町8056-1",
      area: "中部地方",
      link: "https://www.omachi-sanpaku.com/"
    },
    {
      name: "楽寿園",
      location: "静岡県三島市一番町19-3",
      area: "中部地方",
      link: "https://www.city.mishima.shizuoka.jp/rakujyu/"
    },
    {
      name: "富士サファリパーク",
      location: "静岡県裾野市須山字藤原2255-27",
      area: "中部地方",
      link: "https://www.fujisafari.co.jp/"
    },
    {
      name: "伊豆アニマルキングダム",
      location: "静岡県賀茂郡東伊豆町稲取3344",
      area: "中部地方",
      link: "http://www.izu-kamori.jp/izu-biopark/"
    },
    {
      name: "伊豆シャボテン動物公園",
      location: "静岡県伊東市富戸1317-13",
      area: "中部地方",
      link: "https://izushaboten.com/"
    },
    {
      name: "熱川バナナワニ園",
      location: "静岡県賀茂郡東伊豆町奈良本1253-10",
      area: "中部地方",
      link: "http://bananawani.jp/"
    },
    {
      name: "日本平動物園",
      location: "静岡県静岡市駿河区池田1767-6",
      area: "中部地方",
      link: "https://www.nhdzoo.jp/"
    },
    {
      name: "浜松市動物園",
      location: "静岡県浜松市西区舘山寺町199",
      area: "中部地方",
      link: "https://hamazoo.net/"
    },
    {
      name: "豊橋総合動植物公園",
      location: "愛知県豊橋市大岩町字大穴1-238",
      area: "中部地方",
      link: "https://www.nonhoi.jp/"
    },
    {
      name: "東山動植物園",
      location: "愛知県名古屋市千種区東山元町3-70",
      area: "中部地方",
      link: "https://www.higashiyama.city.nagoya.jp/"
    },
    {
      name: "日本モンキーセンター",
      location: "愛知県犬山市犬山官林26番地",
      area: "中部地方",
      link: "https://www.j-monkey.jp/"
    },
    {
      name: "鞍ケ池公園",
      location: "愛知県豊田市矢並町法沢713-2",
      area: "中部地方",
      link: "https://kuragaikepark.com/"
    },
    {
      name: "東公園動物園",
      location: "愛知県岡崎市欠町字大山田1番地",
      area: "中部地方",
      link: "https://www.city.okazaki.lg.jp/1100/1107/1149/p006023.html"
    },
  ]
)

#関西地方
Zoo.create!(
  [
    {
      name: "京都市動物園",
      location: "京都府京都市左京区岡崎法勝寺町岡崎公園内",
      area: "関西地方",
      link: "https://www5.city.kyoto.jp/zoo/"
    },
    {
      name: "天王寺動物園",
      location: "大阪府大阪市天王寺区茶臼山町1-108",
      area: "関西地方",
      link: "https://www.tennojizoo.jp/"
    },
    {
      name: "池田市立五月山動物園",
      location: "大阪府池田市綾羽２丁目",
      area: "関西地方",
      link: "https://satsukiyamazoo.com/"
    },
    {
      name: "神戸市立王子動物園",
      location: "兵庫県神戸市灘区王子町3-1",
      area: "関西地方",
      link: "https://www.kobe-ojizoo.jp/"
    },
    {
      name: "神戸どうぶつ王国",
      location: "兵庫県神戸市中央区港島南町7-1-9",
      area: "関西地方",
      link: "https://www.kobe-oukoku.com/"
    },
    {
      name: "姫路市立動物園",
      location: "兵庫県姫路市本町68番地 姫路城東側",
      area: "関西地方",
      link: "https://www.city.himeji.lg.jp/dobutuen/"
    },
    {
      name: "姫路セントラルパーク",
      location: "兵庫県姫路市豊富町神谷1434",
      area: "関西地方",
      link: "https://www.central-park.co.jp/"
    },
    {
      name: "淡路ファームパークイングランドの丘",
      location: "兵庫県南あわじ市八木養宜上1401番地",
      area: "関西地方",
      link: "https://www.england-hill.com/"
    },
    {
      name: "和歌山城公園動物園",
      location: "和歌山県和歌山市一番丁３",
      area: "関西地方",
      link: "http://wakayamajo.jp/animal/index.html"
    },
    {
      name: "アドベンチャーワールド",
      location: "和歌山県西牟婁郡白浜町堅田2399番地",
      area: "関西地方",
      link: "https://www.aws-s.com/"
    },
  ]
)

#中国地方
Zoo.create!(
  [
    {
      name: "池田動物園",
      location: "岡山県岡山市北区京山2-5-1",
      area: "中国地方",
      link: "https://ikedazoo.jp/"
    },
    {
      name: "広島市安佐動物公園",
      location: "広島県広島市安佐北区安佐町大字動物園",
      area: "中国地方",
      link: "http://www.asazoo.jp/"
    },
    {
      name: "福山市立動物園",
      location: "広島県福山市芦田町福田276-1",
      area: "中国地方",
      link: "https://www.fukuyamazoo.jp/index.php"
    },
    {
      name: "周南市徳山動物園",
      location: "山口県周南市大字徳山5846",
      area: "中国地方",
      link: "https://tokuyama-zoo.jp/"
    },
    {
      name: "秋吉台サファリランド",
      location: "山口県美祢市美東町赤1212",
      area: "中国地方",
      link: "https://www.safariland.jp/"
    },
    {
      name: "ときわ動物園",
      location: "山口県宇部市大字沖宇部254番地",
      area: "中国地方",
      link: "https://www.tokiwapark.jp/zoo/"
    },
  ]
)

#四国地方
Zoo.create!(
  [
    {
      name: "とくしま動物園",
      location: "徳島県徳島市渋野町入道22番地の1",
      area: "四国地方",
      link: "https://www.city.tokushima.tokushima.jp/zoo/"
    },
    {
      name: "愛媛県立とべ動物園",
      location: "愛媛県伊予郡砥部町上原町240",
      area: "四国地方",
      link: "https://www.tobezoo.com/"
    },
    {
      name: "わんぱーくこうちアニマルランド",
      location: "高知県高知市桟橋通6丁目9番1号",
      area: "四国地方",
      link: "https://www.city.kochi.kochi.jp/deeps/17/1712/animal/"
    },
    {
      name: "高知県立のいち動物公園",
      location: "高知県香南市野市町大谷738",
      area: "四国地方",
      link: "https://noichizoo.or.jp/"
    },
  ]
)

#九州地方
Zoo.create!(
  [
    {
      name: "到津の森公園",
      location: "福岡県北九州市小倉北区上到津4-1-8",
      area: "九州地方",
      link: "https://www.itozu-zoo.jp/"
    },
    {
      name: "福岡市動植物園",
      location: "福岡県福岡市中央区南公園1番1号",
      area: "九州地方",
      link: "https://zoo.city.fukuoka.lg.jp/"
    },
    {
      name: "大牟田市動物園",
      location: "福岡県大牟田市昭和町163番地",
      area: "九州地方",
      link: "https://omutacityzoo.org/"
    },
    {
      name: "久留米市鳥類センター",
      location: "福岡県久留米市東櫛原町1667",
      area: "九州地方",
      link: "https://kurumekoen.org/birdc/"
    },
    {
      name: "国営海の中道海浜公園",
      location: "福岡県福岡市東区大字西戸崎18-25",
      area: "九州地方",
      link: "https://uminaka-park.jp/"
    },
    {
      name: "西海国立公園九十九島動植物園",
      location: "長崎県佐世保市鹿子前町1008",
      area: "九州地方",
      link: "https://www.morikirara.jp/"
    },
    {
      name: "長崎バイオパーク",
      location: "長崎県西海市西彼町中山郷2291-1",
      area: "九州地方",
      link: "https://www.biopark.co.jp/"
    },
    {
      name: "熊本市動植物園",
      location: "熊本県熊本市東区健軍5-14-2",
      area: "九州地方",
      link: "https://www.ezooko.jp/"
    },
    {
      name: "九州自然動物公園アフリカンサファリ",
      location: "大分県宇佐市安心院町南畑2-1755-1",
      area: "九州地方",
      link: "https://africansafari.co.jp/"
    },
    {
      name: "宮崎市フェニックス自然動物園",
      location: "宮崎県宮崎市大字塩路字浜山3083-42",
      area: "九州地方",
      link: "http://www.miyazaki-city-zoo.jp/"
    },
    {
      name: "鹿児島市平川動物公園",
      location: "鹿児島県鹿児島市平川町5669-1",
      area: "九州地方",
      link: "https://hirakawazoo.jp/"
    },
    {
      name: "沖縄こどもの国",
      location: "沖縄県沖縄市胡屋５丁目７−１",
      area: "九州地方",
      link: "https://www.okzm.jp/"
    },
    {
      name: "ネオパークオキナワ",
      location: "沖縄県名護市名護4607-41",
      area: "九州地方",
      link: "https://www.neopark.co.jp/"
    },
  ]
)
