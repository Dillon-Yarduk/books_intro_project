require "csv"

BookGenre.delete_all
Genre.delete_all
Book.delete_all
Author.delete_all
Publisher.delete_all

fileName = Rails.root.join("db/books.csv")
csv_data = File.read(fileName)
books = CSV.parse(csv_data, headers: true, encoding: "utf-8")

books.each do |b|
  publisher = Publisher.find_or_create_by(name: b["publisher"])
  author = Author.find_or_create_by(name: b["author"])

  next unless publisher&.valid? && author&.valid?

  book = Book.create(
    title:          b["title"],
    author:         author,
    description:    b["description"],
    publisher:      publisher,
    page_count:     b["page_count"],
    published_date: Date.parse(b["published_date"])
  )

  next unless book&.valid?

  genres = b["genres"].split(",").map(&:strip)
  genres.each do |genre_name|
    genre = Genre.find_or_create_by(name: genre_name)

    BookGenre.create(book: book, genre: genre)
  end
end
