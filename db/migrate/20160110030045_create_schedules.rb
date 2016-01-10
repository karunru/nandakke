class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :schedule_type
      t.date :deadline_date
      t.time :deadline_time
      t.string :subject
      t.string :title
      t.string :submit_method

      t.timestamps null: false
    end
  end
end
