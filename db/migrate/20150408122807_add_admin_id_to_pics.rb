class AddAdminIdToPics < ActiveRecord::Migration
  def change
    add_column :pics, :admin_id, :integer
    add_index :pics, :admin_id
  end
end
