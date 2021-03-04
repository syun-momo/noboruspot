class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :Users_items
  has_many :Items, through: :Users_items

  with_options presence: true do
    validates :nickname
  end
end
