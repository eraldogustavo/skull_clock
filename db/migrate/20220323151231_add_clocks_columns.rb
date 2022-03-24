class AddClocksColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :clocks, :user_id, :integer
    add_column :clocks, :label, :string
    add_column :clocks, :start_time, :datetime
    add_column :clocks, :stop_time, :datetime
    
    add_foreign_key :clocks, :users

  end
end
