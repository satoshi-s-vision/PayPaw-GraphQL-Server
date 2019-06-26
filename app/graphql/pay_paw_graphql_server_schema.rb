# frozen_string_literal: true

class PayPawGraphqlServerSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
