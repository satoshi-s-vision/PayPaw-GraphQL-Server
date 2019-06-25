class UpdateBillsAddDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :bills, :currency_amount, :decimal, :precision => 20, :scale => 8, null: false, :default => 0
    change_column :bills, :status, :boolean, null: false, :default => false
    change_column :bills, :currency, "varchar(64)", null: false
    change_column :bills, :address, "varchar(64)", null: false
  end
end
