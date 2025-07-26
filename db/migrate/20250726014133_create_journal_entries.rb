class CreateJournalEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :journal_entries do |t|
      t.integer :patient_id
      t.text :content

      t.timestamps
    end
  end
end
