class AddTableToClocks < ActiveRecord::Migration[7.0]
  def change
    add_column :clock_histories, :deleted_at, :datetime
  end
end
