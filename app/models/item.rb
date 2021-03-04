class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :info
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :status_id
    validates :prefecture_id
  end

  validates :name, length: { maximum: 40 }
  validates :info, length: { maximum: 1000 }

  belongs_to_active_hash :status
  belongs_to_active_hash :prefecture
  belongs_to :user
end
