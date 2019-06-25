class Mutations::CreateBill < Mutations::BaseMutation
  argument :note, String, required: true
  argument :currency, String, required: true
  argument :currency_amount, Float, required: true

  field :bill, Types::BillType, null: false
  field :errors, [String], null: false
  field :currency_amount, Float, null: false
  field :currency, String, null: false

  def resolve(note: nil, currency: 'USD', currency_amount: 0.0)
    bill = Bill.new(
      note: note,
      user_id: context[:current_user].id,
      currency: currency,
      currency_amount: currency_amount,
      address: SecureRandom.hex(21), # this is just for mock address
    )

    if bill.save
      # Successful creation, return the created object with no errors
      {
        bill: bill,
        errors: [],
      }
    else
      # Failed save, return the errors to the client
      {
        bill: nil,
        errors: bill.errors.full_messages
      }
    end
  end
end
