class AddLocationToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :location, :string
  end
end
