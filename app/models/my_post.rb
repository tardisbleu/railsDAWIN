class MyPost < ActiveRecord::Base
    validates :titre, presence: true
    validates :date, presence: true
    validates :chapeau, presence: true
    validates :vignette, presence: true
    validates :auteur, presence: true
    mount_uploader :vignette, VignetteUploader
end
