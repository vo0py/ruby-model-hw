class RemoveUpdatedAtFromLesson < ActiveRecord::Migration[8.1]
  def change
    remove_column :lessons, :updated_at, :datetime
  end
end
