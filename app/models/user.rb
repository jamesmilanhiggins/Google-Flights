class User < ApplicationRecord
  has_many :user_flights

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
