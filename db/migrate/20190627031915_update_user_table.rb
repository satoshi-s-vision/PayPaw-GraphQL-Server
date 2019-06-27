class UpdateUserTable < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :recipient_name, 'varchar(64)', null: false, unique: true)
    add_column(:users, :first_name, 'varchar(64)', null: false)
    add_column(:users, :last_name, 'varchar(64)', null: false)
    add_column(:users, :phone, 'varchar(64)', null: true)
  end
end
