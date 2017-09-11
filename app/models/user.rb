class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
         
  has_many :posts
  has_many :comments
  has_one :bio
  has_many :accounts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def has_signed_in?
    sign_in_count > 0
  end

  
end
