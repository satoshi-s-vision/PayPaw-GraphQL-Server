module Types
  class BillType < Types::BaseObject
    field :id, ID, null: false
    field :note, String, null: false
    field :currency, String, null: false
    field :currency_amount, Float, null: false
    field :address, String, null: false
    field :status, Boolean, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # def note
    #   @object.user.email + '-' + @object.note
    # end

    field :user, UserType, null: false

  end
end
