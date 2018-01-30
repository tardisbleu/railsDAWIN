class MyPost < ActiveRecord::Base
    belongs_to :user
    validates :titre, presence: true
    validates :date, presence: true
    validates :chapeau, presence: true
    validates :vignette, presence: true
    validates :auteur, presence: true
    mount_uploader :vignette, VignetteUploader
    validates :user_id, presence: true
end
