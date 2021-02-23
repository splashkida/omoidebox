class Memory < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :weather
  belongs_to :prefecture
  belongs_to :price
  belongs_to :scene
end
