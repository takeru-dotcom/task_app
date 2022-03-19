class AddAllDayToMemo < ActiveRecord::Migration[7.0]
  def change
    add_column :memos, :all_day, :boolean default: false, null: false
  end
end
