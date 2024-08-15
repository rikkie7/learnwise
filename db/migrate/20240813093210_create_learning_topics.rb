class CreateLearningTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :learning_topics do |t|
      t.references :course, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
