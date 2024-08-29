class ChangeDatetimeToDateInCourse < ActiveRecord::Migration[7.1]
  def change
    change_column :courses, :start_date, :date
    change_column :courses, :end_date, :date
  end
end
