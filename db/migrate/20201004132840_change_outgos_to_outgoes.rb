class ChangeOutgosToOutgoes < ActiveRecord::Migration[5.2]
  def change
    rename_table :outgos, :outgoes
  end
end
