class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :age, presence: true
    validates :firstname, presence: true
    validates :last_name, presence: true
    has_many :photos
    def is_child?
        age < 18
    end
    def fullname
        firstname+" / "+last_name
    end
end
