class Company < ApplicationRecord
    has_many :articles, dependent: :destroy
    has_many :article_users, through: :articles, source: :user
    has_many :article_categories, through: :articles, source: :category
end
