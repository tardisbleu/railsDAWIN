class MyPost < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :date, presence: true
    validates :text, presence: true
    validates :picture, presence: true
    mount_uploader :picture, VignetteUploader
    validates :user_id, presence: true
end
