class Contact < ApplicationRecord
  belongs_to :user
  validates :name, :email, :address, :mobile, presence: true
end
