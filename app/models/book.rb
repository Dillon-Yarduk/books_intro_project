class Book < ApplicationRecord
  belongs_to :publisher
  belongs_to :author
  validates :title, :description, :page_count, :published_date, :publisher, :author, presence: true
  validates :page_count, numericality: { only_integer: true }
end
