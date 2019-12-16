class Post < ApplicationRecord
    mount_uploader :before_img, BeforeImgUploader
    mount_uploader :after_img, AfterImgUploader
    belongs_to :user
    has_many :commnets
    # validates :before, presence: true
    # validates :before, presence: true

    enum status: {draft:0, pablish:1}
    scope :by_user, -> (user_id) { where(user_id: (user_id)) }
    scope :draft, -> {where(status: 0)}
    scope :publish, -> {where(status: 1)}
end

