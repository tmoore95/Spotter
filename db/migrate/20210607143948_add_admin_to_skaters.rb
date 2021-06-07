class AddAdminToSkaters < ActiveRecord::Migration[6.0]
  def change
    add_column :skaters, :admin, :boolean
  end
end
