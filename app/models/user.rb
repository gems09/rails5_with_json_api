class User < ApplicationRecord
  has_many :contacts
  validates :name, :email, presence: true
end
