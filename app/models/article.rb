class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :company
  validates :message, length: {minimum:10}
end