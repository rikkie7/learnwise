class RenameTypeColumnInCourses < ActiveRecord::Migration[7.1]
  def change
    rename_column :courses, :type, :size
  end
end
