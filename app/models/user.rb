class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :musician
  has_many :offers, foreign_key: 'user_id'
  has_many :messages, foreign_key: 'sender_id'
  has_many :ratings

  def user_dashboard

  end
end
