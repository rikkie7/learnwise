class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.integer :price
      t.string :title
      t.string :description
      t.string :category
      t.string :type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
