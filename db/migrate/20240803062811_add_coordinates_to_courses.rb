class AddCoordinatesToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :latitude, :float
    add_column :courses, :longitude, :float
  end
end
