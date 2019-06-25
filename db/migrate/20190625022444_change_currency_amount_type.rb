class ChangeCurrencyAmountType < ActiveRecord::Migration[5.2]
  def change
    change_column :bills, :currency_amount, :decimal, :precision => 20, :scale => 8
  end
end
