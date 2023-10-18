require 'net/http'
require 'json'

# APIエンドポイントのURIをセット
uri = URI('https://www.jma.go.jp/bosai/forecast/data/overview_forecast/130000.json')

# HTTPリクエストを実行してレスポンスを取得
response = Net::HTTP.get(uri)

# JSON形式のレスポンスをRubyのハッシュに変換
data = JSON.parse(response)

# コンソールに必要な情報を出力
puts "発表者: #{data['publishingOffice']}"
puts "報告日時: #{data['reportDatetime']}"
puts "対象地域: #{data['targetArea']}"
puts "ヘッドライン: #{data['headlineText']}"
puts "詳細: #{data['text']}"
