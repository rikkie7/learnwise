class ChangePriceInCourses < ActiveRecord::Migration[7.1]
  def change
    add_monetize :courses, :price, currency: { present: false }

    remove_column :courses, :price, :integer
  end
end
