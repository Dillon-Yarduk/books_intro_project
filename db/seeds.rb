require "csv"

Book.delete_all
Author.delete_all
Publisher.delete_all

fileName = Rails.root.join("db/books.csv")
csv_data = File.read(fileName)
books = CSV.parse(csv_data, header: true, encoding: "utf-8")

books.each do |b|
  puts b["title"]
end
