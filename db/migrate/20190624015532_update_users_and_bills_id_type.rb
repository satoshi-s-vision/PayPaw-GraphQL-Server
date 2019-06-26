# frozen_string_literal: true

class UpdateUsersAndBillsIdType < ActiveRecord::Migration[5.2]
  def change
    change_column(:bills, :id, :bigint, null: false, unique: true, auto_increment: true)
  end
end
