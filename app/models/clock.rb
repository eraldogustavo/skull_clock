class Clock < ApplicationRecord
    belongs_to :user
    has_many :clock_history

    after_create :save_history_after_create, if: :persisted?
    after_update :save_history_after_update, if: :persisted?

    def save_history_after_create
        ClockHistory.create!(
            :start_time => self.start_time,
            :stop_time => self.stop_time,
            :clock_id => self.id,
            :action_type => 'CREATE'
        )
    end

    def save_history_after_update
        ClockHistory.create!(
            :start_time => self.start_time,
            :stop_time => self.stop_time,
            :clock_id => self.id,
            :action_type => 'UPDATE'
        )
    end

end
