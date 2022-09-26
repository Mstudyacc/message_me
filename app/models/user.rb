class User < ApplicationRecord
  
  has_many :messages, dependent: :destroy

  validates :username, presence: true,
            uniqueness: {case_sensitivity: false},
            length: {minimum: 3, maximum: 15}
  has_secure_password

end