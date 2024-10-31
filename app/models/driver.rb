class Driver < ApplicationRecord

  has_many :rides
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def active_ride
    rides.where(status: :in_progress).last
  end
end
