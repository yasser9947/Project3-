class User < ApplicationRecord
  belongs_to :city, dependent: :destroy
  # has_many :requests, foreign_key: 'caredom_id'
  # has_many :requests, foreign_key: 'caregiver_id'
  # has_many :requests, foreign_key: 'caredom_id'
  has_many :caregivers, class_name: "Request", foreign_key: 'caregiver_id'
  has_many :caredoms, class_name: "Request", foreign_key: 'caredom_id'
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
