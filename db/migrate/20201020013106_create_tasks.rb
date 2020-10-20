class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :subject
      t.string :content
      t.integer :date
      t.string :group
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
