class AddIndexToDoctorsName < ActiveRecord::Migration[8.0]
  def change
    add_index :doctors, :name, unique: true
  end
end
