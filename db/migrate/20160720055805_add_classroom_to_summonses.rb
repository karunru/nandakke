class AddClassroomToSummonses < ActiveRecord::Migration[5.0]
  def change
    add_column :summonses, :classroom, :string
  end
end
