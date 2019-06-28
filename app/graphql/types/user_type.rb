# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :recipient_name, String, null: false
    field :recipient_wallet_address, String, null: false
    field :phone, String, null: true
  end
end
