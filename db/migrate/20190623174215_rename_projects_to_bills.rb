# frozen_string_literal: true

class RenameProjectsToBills < ActiveRecord::Migration[5.2]
  def change
    rename_column(:bills, :title, :note)
  end
end
