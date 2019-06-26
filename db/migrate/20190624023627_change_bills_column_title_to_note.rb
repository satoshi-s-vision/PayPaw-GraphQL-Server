# frozen_string_literal: true

class ChangeBillsColumnTitleToNote < ActiveRecord::Migration[5.2]
  def change
    rename_column(:bills, :title, :note)
  end
end
