class ChangeDataAllDayToMemos < ActiveRecord::Migration[7.0]
  def change
    change_column :memos, :all_day, :string
  end
end
