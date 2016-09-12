class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_column :users, :company_id, :integer
  end
end
