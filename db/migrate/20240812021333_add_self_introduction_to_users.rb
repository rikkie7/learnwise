class AddSelfIntroductionToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :self_introduction, :text
  end
end
