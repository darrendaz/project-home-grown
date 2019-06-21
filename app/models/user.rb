class User < ApplicationRecord
  has_and_belongs_to_many :gardens
  has_many :plants, through: :gardens
  has_many :comments, through: :plants
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end