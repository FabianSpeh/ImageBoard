class Post < ApplicationRecord
    has_one_attached :image

    validates :image, presence: true
    validates :caption, length: {minimum:1, maximum:50}, allow_blank: true
end
