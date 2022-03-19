class AddStartDateToMemos < ActiveRecord::Migration[7.0]
  def change
    add_column :memos, :start_date, :date
  end
end
