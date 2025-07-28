class AddIndexToPatientsName < ActiveRecord::Migration[8.0]
  def change
    add_index :patients, :name, unique: true
  end
end
