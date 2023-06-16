class Story < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true
end
