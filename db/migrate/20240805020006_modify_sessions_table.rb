class ModifySessionsTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :sessions, :start_time, :datetime
    remove_column :sessions, :end_time, :datetime

    add_column :sessions, :start_time, :time
    add_column :sessions, :end_time, :time
    add_column :sessions, :date, :date
  end
end
