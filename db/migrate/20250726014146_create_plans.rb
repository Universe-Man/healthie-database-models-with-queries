class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.string :type

      t.timestamps
    end
  end
end
