json.extract! book, :id, :title, :description, :page_count, :published_date, :publisher_id, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
