class Photo < ActiveRecord::Base
    belongs_to :user
    validates :file, presence: true
    validates :user_id, presence: true
    validates :name, presence: true
    mount_uploader :file,PhotoUploader
end
