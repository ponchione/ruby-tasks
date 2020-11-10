class CreateTaskItems < ActiveRecord::Migration[6.0]
  def change
    create_table :task_items do |t|
      t.integer :position
      t.string :title
      t.boolean :done
      t.references :task_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
