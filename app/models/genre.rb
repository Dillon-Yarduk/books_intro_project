class Genre < ApplicationRecord
  valdates :name, presence: true, uniqueness: true
end
