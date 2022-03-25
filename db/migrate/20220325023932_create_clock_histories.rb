class CreateClockHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :clock_histories do |t|
      t.belongs_to :clock, foreign_key: true
      t.datetime :start_time
      t.datetime :stop_time
      t.string :action_type
      
      t.timestamps
    end
  end
end
