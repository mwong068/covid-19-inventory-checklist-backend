class HelpfulUserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email, :family_size, :has_children, :can_deliver, :helpful_items

end
