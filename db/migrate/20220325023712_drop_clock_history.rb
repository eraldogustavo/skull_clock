class DropClockHistory < ActiveRecord::Migration[7.0]
  def change
    drop_table :clock_hitories
  end
end
