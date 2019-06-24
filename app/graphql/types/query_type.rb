module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :me, Types::UserType, null: true,
      description: "the current user"
    def me
      context[:current_user]
    end

    field :bills, [Types::BillType], null: false,
      description: "the bills for the current user"
    def bills
      context[:current_user].bills
    end

    field :bill, Types::BillType, null: false do
      description "find bill by id user"
      argument :id, ID, required: true
    end
    def bill(id:)
      Bill.find(id)
    end
  end
end
