class ChangeFormatToString < ActiveRecord::Migration[7.1]
  def change
    change_column :courses, :format, :string
  end
end
