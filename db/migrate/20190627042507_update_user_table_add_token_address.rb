# frozen_string_literal: true

class UpdateUserTableAddTokenAddress < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :recipient_wallet_address, 'varchar(64)', null: false)
  end
end
