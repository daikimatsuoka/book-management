class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :publisher, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :synopsis_explanation, presence: true 
  validates :book_image, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  belongs_to :user
  has_one_attached :book_image
end
