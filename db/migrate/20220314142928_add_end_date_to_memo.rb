class AddEndDateToMemo < ActiveRecord::Migration[7.0]
  def change
    add_column :memos, :end_date, :date
  end
end
