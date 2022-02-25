class Post < ApplicationRecord
    has_one_attached :image

    belongs_to :user
    has_many :comments, :dependent => :delete_all

    acts_as_votable

    acts_as_taggable_on :tags
    
    validates :image, presence: true
    validates :caption, length: {minimum:1, maximum:50}, allow_blank: true
    validates :tags, allow_blank: true, length: {minimum:1, maximum:30}
    validates :ispublic, presence: true
end
