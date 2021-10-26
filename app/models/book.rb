class Book < ApplicationRecord
  paginates_per 15
  belongs_to :publisher
  belongs_to :author
  has_many :book_genres
  has_many :genres, through: :book_genres
  validates :title, :description, :page_count, :published_date, :publisher, :author, presence: true
  validates :page_count, numericality: { only_integer: true }
end
