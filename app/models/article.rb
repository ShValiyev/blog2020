class Article < ApplicationRecord
  validates :author, presence: true
  validates :title, presence: true
  validates :text, presence: true, length: {minimum: 5}
end
