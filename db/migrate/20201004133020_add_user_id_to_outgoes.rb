class AddUserIdToOutgoes < ActiveRecord::Migration[5.2]
  def change
    add_column :outgoes, :user_id, :integer
  end
end
