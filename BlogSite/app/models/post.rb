class Post < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true
  validates :body, presence: true

  belongs_to :category
  belongs_to :account

  # callbacks - validation /save/create/update/destroy
  after_create :update_total_posts_count

  scope :active, -> { where(active: true) }
  scope :order_by_latest_first, -> { order(created_at: :desc) }
  scope :limit_5, -> { limit(5) }

  private

  def update_total_posts_count
    category.increment(:total_count, 1).save
  end
end
