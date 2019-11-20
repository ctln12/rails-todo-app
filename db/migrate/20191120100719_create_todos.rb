class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :details
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
