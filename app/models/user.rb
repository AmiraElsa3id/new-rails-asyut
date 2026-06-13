class User < ApplicationRecord
  validates :name, presence: true
  validates :DOB, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "must be a valid email address" }
end
