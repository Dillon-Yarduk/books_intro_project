class Author < ApplicationRecord
  valdates :name, presence: true, uniqueness: true
  has_many :books
end
