class AddClocksConstraint < ActiveRecord::Migration[7.0]
  def change
     # add_reference :clocks, :user, foreign_key: true
     add_foreign_key :clocks, :users
  end
end
