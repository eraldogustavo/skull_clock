class AddColumnToClock < ActiveRecord::Migration[7.0]
  def change
    add_column :clocks, :deleted_at, :datetime
  end
end
