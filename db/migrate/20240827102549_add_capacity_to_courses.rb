class AddCapacityToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :capacity, :integer
  end
end
