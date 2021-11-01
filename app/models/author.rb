class Author < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :books
  has_many :publishers, through: :books
end
