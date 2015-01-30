class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  has_many :media, through: :favorites, dependent: :destroy
  validates :email, :presence => { :message => " Email cannot be blank" }
  validates :password, :presence => { :message => "Password cannot be blank" }

  # has_many :favorite_media, through: :favorites, source: :media, dependent: :destroy

end
