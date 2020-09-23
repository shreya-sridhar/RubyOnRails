class Asset < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, numericality: {only_integer: true}, length: { maximum: 7}

  CONDITION = %w{ New Excllent Mint Used Fair Poor }

  


end
