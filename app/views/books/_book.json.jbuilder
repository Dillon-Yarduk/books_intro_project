json.extract! book, :id, :title, :description, :page_count, :published_date, :created_at, :updated_at
json.url book_url(book, format: :json)
