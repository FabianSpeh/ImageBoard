class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  
  validates :body, length: {minimum: 1, maximum: 255}, allow_blank: false
end
