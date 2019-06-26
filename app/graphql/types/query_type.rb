# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :me, Types::UserType, null: true,
                                description: 'the current user'
    def me
      context[:current_user]
    end

    field :bills, [Types::BillType], null: false,
                                     description: 'the bills for the current user'
    def bills
      context[:current_user].bills
    end

    field :bill, Types::BillType, null: true do
      description 'find bill by id user'
      argument :id, ID, required: true
    end
    def bill(id:)
      Bill.find_by(id: id, user_id: context[:current_user].id)
    end
  end
end
