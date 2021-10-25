class Book < ApplicationRecord
  valdates :title, :description, :page_count, :published_date, presence: true
end
