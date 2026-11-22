class RemoveUpdatedAtFromGroup < ActiveRecord::Migration[8.1]
  def change
    remove_column :groups, :updated_at, :datetime
  end
end
