class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :typeOf
      t.integer :weight
      t.integer :set
      t.integer :reps

      t.timestamps
    end
  end
end
