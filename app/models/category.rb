class Category < ApplicationRecord
    has_many :articles, dependent: :destroy
    has_many :article_users, through: :articles, source: :user
    has_many :article_companies, through: :articles, source: :company
end
