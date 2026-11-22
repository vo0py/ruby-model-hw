class RemoveCreatedAtFromStudent < ActiveRecord::Migration[8.1]
  def change
    remove_column :students, :created_at, :datetime
  end
end
