class CreateSummonses < ActiveRecord::Migration
  def change
    create_table :summonses do |t|
      t.string :student
      t.string :teacher
      t.string :reason
      t.string :place

      t.timestamps null: false
    end
  end
end
