class AddClassroomToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :classroom, :string
  end
end
