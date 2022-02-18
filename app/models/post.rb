class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :image, presence: true
    validates :caption, length: {minimum:1, maximum:50}, allow_blank: true
end
