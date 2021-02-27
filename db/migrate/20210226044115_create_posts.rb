class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :lecture
      t.string :teacher
      t.string :category
      t.integer :year
      t.string :term
      t.string :evaluation
      t.string :cause
      t.text :comment

      t.timestamps
    end
  end
end
