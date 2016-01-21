class ContactResource < JSONAPI::Resource

  attributes :name, :phone_number
  has_one :user

end
