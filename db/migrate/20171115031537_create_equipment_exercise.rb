class CreateEquipmentExercise < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment_exercises do |t|
      t.references :exercise, foreign_key: true
      t.references :equipment, foreign_key: true
    end
  end
end
