class Author < ApplicationRecord
  valdates :name, presence: true, uniqueness: true
end
