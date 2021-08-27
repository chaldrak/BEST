class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable, :lockable

 
  validates :phone_number, numericality: { only_integer: true }, length: {is:8}
  validates :pseudo, length: {minimum:6},  presence: true, uniqueness:  true
  validates :adress, presence: true
  has_many :articles, dependent: :destroy
  has_many :article_companies, through: :articles, source: :company
  has_many :article_categories, through: :articles, source: :category
end
