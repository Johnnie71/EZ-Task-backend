class RemoveGroupFromTaskTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :group, :string
    remove_column :tasks, :date, :integer
  end
end
