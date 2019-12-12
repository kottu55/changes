class Post < ApplicationRecord
    belongs_to :user
    has_many :commnets
    attachment :before_img
    attachment :after_img

    enum status: {draft:0, pablish:1}
    scope :by_user, -> (user_id) { where(user_id: (user_id)) }
    scope :draft, -> {where(status: 0)}
    scope :publish, -> {where(status: 1)}
end

