class RemoveCreatedAtFromLesson < ActiveRecord::Migration[8.1]
  def change
    remove_column :lessons, :created_at, :datetime
  end
end
