# frozen_string_literal: true
module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :email, String, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :recipient_name, String, required: true
    argument :recipient_wallet_address, String, required: true # might make this unique
    argument :phone, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(
      email:,
      first_name:,
      last_name:,
      recipient_name:,
      recipient_wallet_address:,
      phone:
    )
      user = User.new(
        email: email,
        first_name: first_name,
        last_name: last_name,
        recipient_name: recipient_name,
        recipient_wallet_address: recipient_wallet_address,
        phone: phone
      )
      if user.save
        # Successful creation, return the created object with no errors
        {
          user: user,
          errors: [],
        }
      else
        # Failed save, return the errors to the client
        {
          user: nil,
          errors: user.errors.full_messages,
        }
      end
    end
  end
end
