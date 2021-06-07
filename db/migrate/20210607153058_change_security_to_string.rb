class ChangeSecurityToString < ActiveRecord::Migration[6.0]
  def change
    change_column :spots, :security, :string
  end
end
