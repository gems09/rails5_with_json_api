class ContactResource < JSONAPI::Resource

  attributes :name, :mobile, :address, :email
  has_one :user

end
