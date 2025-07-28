class AddIndexToPatientsEmail < ActiveRecord::Migration[8.0]
  def change
    add_index :patients, :email, unique: true
  end
end
