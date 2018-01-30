class User < ActiveRecord::Base
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

=======
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
    validates :name, presence: true
    validates :surname, presence: true
    has_many :posts
    def fullname
        surname+" "+name
    end
>>>>>>> 2432d49a95c5631328a220421e71b1f1ee4127df
end
