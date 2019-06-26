# frozen_string_literal: true

class UpdateBillsColumn < ActiveRecord::Migration[5.2]
  def change
    add_column(:bills, :currency, 'varchar(64)')
    add_column(:bills, :currency_amount, 'int(11)')
    add_column(:bills, :address, 'varchar(64)')
    add_column(:bills, :asset_id, 'int(11)')
    add_column(:bills, :asset_amount, 'int(11)')
    add_column(:bills, :status, :boolean)
  end
end
