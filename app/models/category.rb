class Category < ApplicationRecord
  validates_presence_of :title, :url, default: 0
  has_many :posts

  def total
    posts.count
  end
end
