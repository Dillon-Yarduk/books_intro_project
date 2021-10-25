class Publisher < ApplicationRecord
  valdates :name, presence: true, uniqueness: true
end
