class Post < ApplicationRecord
    belongs_to :user
    has_many :commnets
    attachment :before_img
    attachment :after_img

    scope :by_user, -> (user_id) { where(user_id: (user_id)) }
end
