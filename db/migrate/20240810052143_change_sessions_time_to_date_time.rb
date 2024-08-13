class ChangeSessionsTimeToDateTime < ActiveRecord::Migration[7.1]
  def change
    remove_column :sessions, :start_time, :time
    remove_column :sessions, :end_time, :time
    add_column :sessions, :start_time, :datetime
    add_column :sessions, :end_time, :datetime
  end
end
