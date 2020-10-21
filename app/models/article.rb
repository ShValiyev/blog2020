class Article < ApplicationRecord
  belongs_to :user

  # validates :author, presence: true
  validates :title, presence: true
  validates :text, presence: true, length: {minimum: 5}
end
