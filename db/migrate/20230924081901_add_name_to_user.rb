class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :integer
    add_column :users, :birthday, :datetime
    add_column :users, :status, :integer
    add_column :users, :gender, :integer
    add_column :users, :image, :string
    add_column :users, :verify_code, :integer
    add_column :users, :verified, :integer
    add_column :users, :address, :string
    add_column :users, :district_name, :string
    add_column :users, :ward_name, :string
    add_column :users, :deleted_at, :datetime
  end
end
