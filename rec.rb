File Edit Options Buffers Tools Ruby Help
# coding: utf-8
require "google/cloud/bigquery"

bigquery = Google::Cloud::Bigquery.new(
  project: "tabirepo", #BigQueryのプロジェクトID
  keyfile: "XXXXXXX" #認証用JSONキーファイル
)

sql = "select title from app.item limit 1000"
data = bigquery.query sql

puts data.count

data.each do |row|
  puts row["title"]
end
