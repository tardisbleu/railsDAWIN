class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
    validates :first_name, presence: true
    validates :last_name, presence: true
    has_many :my_posts
    def fullname
        first_name+" "+last_name
    end
end
