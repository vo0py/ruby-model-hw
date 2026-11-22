class RemoveCreatedAtFromGroup < ActiveRecord::Migration[8.1]
  def change
    remove_column :groups, :created_at, :datetime
  end
end
