class Post < ApplicationRecord
    belongs_to :user
    attachment :before_img
    attachment :after_img
end
