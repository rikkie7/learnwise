class AddFormatToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :format, :integer
  end
end
