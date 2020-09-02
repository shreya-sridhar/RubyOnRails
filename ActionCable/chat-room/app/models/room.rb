class Room < ApplicationRecord
  has_many :messages
  # https://guides.rubyonrails.org/association_basics.html
  has_many :users, through: :messages
end
