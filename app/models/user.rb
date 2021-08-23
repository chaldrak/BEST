class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable

 
  validates :phone_number, numericality: { only_integer: true }, length: {is:8}
  validates :name, length: {maximum:20},  presence: true
end