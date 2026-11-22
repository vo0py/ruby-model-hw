class RemoveUpdatedAtFromStudent < ActiveRecord::Migration[8.1]
  def change
    remove_column :students, :updated_at, :datetime
  end
end
