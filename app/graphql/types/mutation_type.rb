module Types
  class MutationType < Types::BaseObject
    field :create_bill, mutation: Mutations::CreateBill
  end
end
